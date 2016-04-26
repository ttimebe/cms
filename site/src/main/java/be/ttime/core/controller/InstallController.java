package be.ttime.core.controller;

import be.ttime.core.model.form.InstallCmsForm;
import be.ttime.core.persistence.model.ApplicationConfigEntity;
import be.ttime.core.persistence.model.ApplicationLanguageEntity;
import be.ttime.core.persistence.model.RoleEntity;
import be.ttime.core.persistence.model.UserEntity;
import be.ttime.core.persistence.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.*;
import java.util.stream.Collectors;

@Controller
public class InstallController {

    @Autowired
    private IApplicationService applicationService;
    @Autowired
    private IUserService userService;
    @Autowired
    private IRoleService roleService;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    private  Map<String, ApplicationLanguageEntity> langMap;

    @RequestMapping(value = "/admin/install", method = RequestMethod.POST)
    @ResponseBody
    public String install(@Valid InstallCmsForm form, BindingResult result, HttpServletRequest request) throws Exception {

        if(applicationService.getApplicationConfig().isAlreadyInstall()){
            throw new Exception("Installation already made!");
        }

        langMap = applicationService.getApplicationLanguagesMap();

        ApplicationConfigEntity appConfig = applicationService.getApplicationConfig();

        // Admin Lang
        ApplicationLanguageEntity adminLang = langMap.get(form.getAdminLocale());
        if(adminLang == null) {
            throw new Exception("The administration locale " + form.getAdminLocale() + " not exist");
        }
        adminLang.setEnabledForAdmin(true);
        applicationService.saveApplicationLanguage(adminLang);

        // Public Lang
        ApplicationLanguageEntity publicLang = this.publicLanguage(form.getSiteLocale());
        applicationService.saveApplicationLanguage(publicLang);

        // Extra Lang
        if(form.getExtraLocale() != null) {
            List<ApplicationLanguageEntity> extraLang =
                    form.getExtraLocale()
                            .stream()
                            .filter(Objects::nonNull)
                            .filter(s -> !s.equals(form.getSiteLocale()))
                            .map(this::publicLanguage)
                            .collect(Collectors.toList());
            applicationService.saveApplicationLanguage(extraLang);
        }
        appConfig.setSiteName(form.getSitename());
        appConfig.setUrl(form.getUrl());
        appConfig.setSeoDescription(form.getDescription());
        appConfig.setDefaultAdminLang(adminLang);
        appConfig.setDefaultPublicLang(publicLang);
        appConfig.setAlreadyInstall(true);

        appConfig.setForcedLangInUrl(form.isLangInUrl());
        applicationService.saveApplicationConfig(appConfig);


        RoleEntity role = roleService.findRoleByName("ROLE_SUPER_ADMIN");

        UserEntity user = new UserEntity();
        user.setFirstName(form.getFirstname());
        user.setLastName(form.getLastname());
        user.setEmail(form.getEmail());
        user.setCreatedDate(new Date());
        user.setPassword(bCryptPasswordEncoder.encode(form.getPassword()));

        Collection<RoleEntity> roles = new ArrayList<>();
        roles.add(role);

        user.setRoles(roles);


        userService.save(user);

        return "installation";
    }

    private ApplicationLanguageEntity publicLanguage(String locale){
        ApplicationLanguageEntity lang = langMap.get(locale);
        if(lang == null){
            lang = new ApplicationLanguageEntity();
            lang.setLocale(locale);
        }
        lang.setEnabledForPublic(true);
        return lang;
    }
}