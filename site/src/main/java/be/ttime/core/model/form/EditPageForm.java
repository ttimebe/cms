package be.ttime.core.model.form;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.NotEmpty;

@Getter
@Setter
public class EditPageForm {

    private Long contentId;
    private Long contentDataId;
    private Long templateId;
    @NotEmpty
    private String name;
    @NotEmpty
    private String pageDataTitle;
    @NotEmpty
    private String slug;

    private String devIncludeTop;
    private String devIncludeBot;

    private String seoH1;
    private String seoTag;
    private String seoDescription;
    private boolean menuItem;
    private boolean enabled;
    private boolean memberOnly;
    private boolean contentDataEnabled;
}
