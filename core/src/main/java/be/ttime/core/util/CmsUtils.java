package be.ttime.core.util;

import be.ttime.core.persistence.model.UserEntity;
import com.ibatis.common.jdbc.ScriptRunner;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.Session;
import org.hibernate.jdbc.Work;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.csrf.CsrfToken;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.StringReader;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

@Slf4j
public class CmsUtils {

    public final String csrfParameterName = "_csrf";

    public static String getCsrfInput(HttpServletRequest request) {
        Object param = request.getAttribute("_csrf");
        CsrfToken csrf = (param instanceof CsrfToken ? (CsrfToken) param : null);
        String csrfName = csrf != null ? csrf.getParameterName() : "";
        String csrfValue = csrf != null ? csrf.getToken() : "";
        return "<input type=\"hidden\" name=\"" + csrfName + "\" value=\"" + csrfValue + "\" />";
    }

    public static String alert(@NonNull String type, @NonNull String message, String title) {
        StringBuilder sb = new StringBuilder();
        sb.append("<div class=\"alert alert-").append(type).append("\" role=\"alert\">");
        if (title != null) {
            sb.append("<strong>").append(title).append("</strong> - ");
        }
        sb.append(message);
        sb.append("</div>");
        return sb.toString();
    }

    public static Map<String, Object> getAttributes(HttpServletRequest request) {
        Map<String, Object> attr = new HashMap<>();
        Enumeration params = request.getAttributeNames();
        if (params != null) {
            while (params.hasMoreElements()) {
                String paramName = (String) params.nextElement();
                attr.put(paramName, request.getAttribute(paramName));
            }
        }
        return attr;
    }

    public static Map<String, Object> getParameters(HttpServletRequest request) {

        Map<String, Object> get = new HashMap<>();
        Enumeration params = request.getParameterNames();
        if (params != null) {
            while (params.hasMoreElements()) {
                String paramName = (String) params.nextElement();
                get.put(paramName, request.getParameter(paramName));
            }
        }
        return get;
    }

    public static UserEntity getCurrentUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserEntity custom = null;
        if (auth != null && !(auth instanceof AnonymousAuthenticationToken)) {
            try {
                custom = (UserEntity) auth.getPrincipal();
            } catch (Exception e) {
                log.error(e.toString());
            }
        }
        return custom;
    }

    public static Path getResourceFilePath(String resourceName) throws URISyntaxException {
        return Paths.get(ClassLoader.getSystemResource(resourceName).toURI());
    }

    public static String getResourceFileContent(String resourceName) throws IOException, URISyntaxException {
        return new String(Files.readAllBytes(getResourceFilePath(resourceName)));
    }

    public static void executeResourceFileScript(EntityManager em, String scriptLocation) {

        Session session = em.unwrap(Session.class);
        session.doWork(connection -> {
            try {
                String sqlScript = getResourceFileContent(scriptLocation);
                ScriptRunner sr = new ScriptRunner(connection, false, false);
                sr.runScript(new StringReader(sqlScript));
            } catch (Exception e) {
                log.error("Error executing script : " + e.toString());
            }
        });
    }

    public static Date LocalDateTimeToDate(LocalDateTime date){
        return Date.from(date.atZone(ZoneId.systemDefault()).toInstant());
    }

    public static boolean isAjax(HttpServletRequest request) {
        return "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
    }
}