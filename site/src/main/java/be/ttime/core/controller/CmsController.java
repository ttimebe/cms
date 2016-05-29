package be.ttime.core.controller;

import be.ttime.core.persistence.model.ContentDataEntity;
import be.ttime.core.persistence.model.ContentEntity;
import be.ttime.core.persistence.service.IApplicationService;
import be.ttime.core.persistence.service.IBlockService;
import be.ttime.core.persistence.service.IContentService;
import be.ttime.core.util.PebbleUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

@RestController
@Slf4j
public class CmsController {

    @Autowired
    private IContentService pageService;

    @Autowired
    private IApplicationService applicationService;

    @Autowired
    private IBlockService blockService;

    @Autowired
    private PebbleUtils pebbleUtils;

    @RequestMapping(method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @Transactional
    public String page(ModelMap model, HttpServletRequest request, HttpServletResponse response, Locale locale) throws Exception {

        final String path = request.getRequestURI();
        ContentDataEntity content = pageService.findBySlug(path, locale);
        ContentEntity parents = pageService.findContentParent(content.getContent().getId());
     /*     //ContentDataEntity contentData = pageService.findBySlug(path, locale);
        if (contentData == null) {
            throw new ResourceNotFoundException();
        }

        if (!StringUtils.isEmpty(contentData.getData())) {

            HashMap<String, Object> data = CmsUtils.parseData(contentData.getData());

            model.put("data", data);
            //model.put("dataArray", pageData.getDataArray());
        }

        BlockEntity master = blockService.findByNameAndBlockType(CmsUtils.BLOCK_PAGE_MASTER, CmsUtils.BLOCK_TYPE_SYSTEM);


        CmsUtils.fillModelMap(model,request);

        //model.put("title", content.getSeoTitle());
        model.put("main", pebbleUtils.parseBlock(contentData.getContent().getContentTemplate().getBlock(), model));

        return pebbleUtils.parseBlock(master, model);
        */
        return "yoo";
    }
  
    /*
    @RequestMapping(method = RequestMethod.POST)
    public String pagePost(ModelMap model, HttpServletRequest request) throws Exception {

        return "CMS controller POST";
    }
    */
}
