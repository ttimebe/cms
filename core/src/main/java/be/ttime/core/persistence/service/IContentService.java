package be.ttime.core.persistence.service;

import be.ttime.core.model.PageableResult;
import be.ttime.core.persistence.model.ContentDataEntity;
import be.ttime.core.persistence.model.ContentEntity;
import be.ttime.core.persistence.model.ContentTypeEntity;
import org.springframework.security.access.prepost.PreAuthorize;

import java.util.*;

public interface IContentService {

    @PreAuthorize("hasAnyRole('ROLE_ADMIN_CMS', 'ROLE_ADMIN_WEBCONTENT')")
    ContentEntity saveContent(ContentEntity p);
    @PreAuthorize("hasAnyRole('ROLE_ADMIN_CMS', 'ROLE_ADMIN_WEBCONTENT')")
    List<ContentEntity> saveContent(List<ContentEntity> pages);

    @PreAuthorize("hasAnyRole('ROLE_ADMIN_CMS', 'ROLE_ADMIN_WEBCONTENT')")
    List<ContentDataEntity> saveContentData(List<ContentDataEntity> contents);
    @PreAuthorize("hasAnyRole('ROLE_ADMIN_CMS', 'ROLE_ADMIN_WEBCONTENT')")
    ContentDataEntity saveContentData(ContentDataEntity content);

    @PreAuthorize("hasAnyRole('ROLE_ADMIN_CMS_DELETE', 'ROLE_ADMIN_WEBCONTENT_DELETE')")
    void deleteContent(Long id) throws Exception;
    @PreAuthorize("hasAnyRole('ROLE_ADMIN_CMS_DELETE', 'ROLE_ADMIN_WEBCONTENT_DELETE')")
    void deleteContentData(Long id) throws Exception;

    String getNavMenu(String lang, long depth);

    String getPagesTree();

    ContentEntity findContentAdmin(Long id);

    boolean contentCanBeDeleted(ContentEntity content, String contentDataLocale);

    boolean contentIsVisible(ContentEntity content);

    boolean contentIsVisible(ContentEntity content, ContentDataEntity contentDataEntity);

    boolean contentIsPrivate(ContentEntity content);

    Collection<String> contentRequiredRole(ContentEntity content);

    ContentEntity findContentAndContentData(Long id, String locale);

    String getContentJsonByTypeAndParams(String contentType, Map<String,String> params) throws Exception;

    ContentEntity findContent(Long id);

    ContentDataEntity findContentData(Long id);

    ContentEntity findBySlug(String slug, Locale locale);

    List<ContentTypeEntity> findAllContentType();

    boolean contentTypeExist(String contentType);

    Collection<String> getRoleForContent(ContentEntity content);

    PageableResult<ContentEntity> findWebContent(String locale, Long year, String name, String type, String theme, String tags, String contentType, Long pageNumber, Long limit, Boolean isPrivate);

    PageableResult<ContentEntity> findWebContent(String locale, Date begin, Date end, String name, String type, String theme, String tags, String contentType, Long pageNumber, Long limit, Boolean isPrivate);

    Long getContentDataIdBySlug(String slug, Locale locale);

    List<ContentEntity> findByContentParentOrderByOrderAsc(ContentEntity parent);
}
