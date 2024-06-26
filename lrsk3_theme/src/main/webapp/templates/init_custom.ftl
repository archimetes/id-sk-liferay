<#assign
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
    show_breadcrumb = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-breadcrumb"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))
    show_header_personal_bar = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-personal-bar"))
    inline_navigation = getterUtil.getBoolean(themeDisplay.getThemeSetting("inline-navigation"))
	wrap_widget_page_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-widget-page-content"))
    show_feedback = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-feedback"))
/>

<#if wrap_widget_page_content && ((layout.isTypeContent() && themeDisplay.isStateMaximized()) || (layout.getType() == "portlet"))>
	<#assign portal_content_css_class = "container" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>