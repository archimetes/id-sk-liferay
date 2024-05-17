<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${html_title}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport"/>

    <@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<div class="d-flex flex-column min-vh-100">
    <@liferay.control_menu />
    <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl">
        <#if cookie_banner>
            <#include "${full_templates_path}/cookie_banner.ftl"/>
        </#if>
    </div>
    <div class="idsk-header-web__brand" id="wrapper">
        <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl idsk-container">
            <div class="idsk-header-web__brand-text">
                <div class="idsk-header-web__brand-text-gestor" style="float: left">
                    Oficiálna stránka <button class="idsk-header-web__brand-button lrsk-expanding "
                                            data-text-for-hide="Skryť panel"
                                            data-text-for-show="Rozbaliť panel"
                                            data-expand-target="idsk-header-web__brand_detail"><b>verejnej správy SR</b>
                        <span class="idsk-header-web__link-arrow"></span>
                    </button>
                </div>
                <div class="idsk-header-web__brand-text-gestor--mobile" style="float: left">
                    SK <button class="idsk-header-web__brand-button lrsk-expanding "
                                data-text-for-hide="Skryť panel"
                                data-text-for-show="Rozbaliť panel"
                                data-expand-target="idsk-header-web__brand_detail"><b>e-Gov</b>
                        <span class="idsk-header-web__link-arrow"></span>
                </div>
                <div style="display: inline-block;"> </div>
                <div style="float: right">
                    <#assign preferences = freeMarkerPortletPreferences.getPreferences(
                    "portletSetupPortletDecoratorId", "barebone"
                    ) />
                        <@liferay_portlet["runtime"]
                        defaultPreferences="${preferences}"
                        portletName="com_liferay_site_navigation_language_web_portlet_SiteNavigationLanguagePortlet"
                        />
                </div>
            </div>
        </div>
        <div id="idsk-header-web__brand_detail" class="lrsk-expandable">
            <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl idsk-container">
                <div class="idsk-header-web__brand_detail-one-half">
                    <h3 class="body">
                        Doména gov.sk je oficiálna
                    </h3>
                    <p class="body">
                        Toto je oficiálna webová stránka orgánu verejnej moci Slovenskej republiky. Oficiálne stránky využívajú najmä doménu gov.sk. <a class="link" href="https://www.slovensko.sk/sk/agendy/agenda/_organy-verejnej-moci" target="_blank" title="odkazy na webové sídla orgánov verejnej moci">Odkazy na jednotlivé webové sídla orgánov verejnej moci nájdete na tomto odkaze</a>.
                    </p>
                </div>
                <div class="idsk-header-web__brand_detail-one-half">
                    <h3 class="body">
                        Táto stránka je zabezpečená
                    </h3>
                    <p class="body">
                        Buďte pozorní a vždy sa uistite, že zdieľate informácie iba cez zabezpečenú webovú stránku verejnej správy SR. Zabezpečená stránka vždy začína https:// pred názvom domény webového sídla.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="d-flex flex-column flex-fill position-relative" id="wrapper">
        <#if show_header>
            <header id="idsk-header-web">
                <div id="idsk-header-web__main">
                    <div class="navbar navbar-classic navbar-expand-md navbar-light">
                        <div class="container-fluid container-fluid-max-xl">
                            <a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs idsk-header-web__main-logo--mobile"
                            href="${site_default_url}" rel="nofollow">
                                <img alt="${logo_description}" class="mr-2 ml-2" height="56" src="${site_logo}"/>
                                <#if show_site_name>
                                    <h2 <#if show_control_menu>aria-hidden="true"</#if>
                                        class="font-weight-bold h2 mb-0 text-dark">${site_name}</h2>
                                </#if>
                            </a>

                            <button class="ml-2 idsk-header-web__main-headline-search-button">
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M12.9996 11H12.2096L11.9296 10.73C13.1296 9.33002 13.7496 7.42002 13.4096 5.39002C12.9396 2.61002 10.6196 0.390015 7.81965 0.0500152C3.58965 -0.469985 0.029649 3.09001 0.549649 7.32001C0.889649 10.12 3.10965 12.44 5.88965 12.91C7.91965 13.25 9.82965 12.63 11.2296 11.43L11.4996 11.71V12.5L15.7496 16.75C16.1596 17.16 16.8296 17.16 17.2396 16.75C17.6496 16.34 17.6496 15.67 17.2396 15.26L12.9996 11ZM6.99965 11C4.50965 11 2.49965 8.99002 2.49965 6.50002C2.49965 4.01002 4.50965 2.00002 6.99965 2.00002C9.48965 2.00002 11.4996 4.01002 11.4996 6.50002C11.4996 8.99002 9.48965 11 6.99965 11Z" fill="#126DFF"/>
                                </svg>
                            </button>

                            <button class="idsk-header-web__main-headline-menu-button" aria-label="Rozbaliť menu" aria-expanded="false"
                                    data-text-for-show="Rozbaliť menu" data-text-for-hide="Zavrieť menu">
                                Menu
                                <span class="idsk-header-web__menu-open"></span>
                                <span class="idsk-header-web__menu-close"></span>
                            </button>
                        </div>
                    </div>

                    <div class="navbar navbar-classic navbar-top py-3">
                        <div class="container-fluid container-fluid-max-xl idsk-container user-personal-bar">
                            <div class="align-items-center autofit-row">
                                <div class="idsk-header-web__main-headline">
                                    <a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                                        <img alt="${logo_description}" class="mr-2" height="50" src="${site_logo}"/>
                                        <#if show_site_name>
                                            <h1 <#if show_control_menu>aria-hidden="true"</#if>
                                                class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
                                        </#if>
                                    </a>
                                </div>
                                
                                <div class="idsk-header-web__main-action idsk-header-web__main-action--mobile">
                                    <div class="container-fluid container-fluid-max-xl">
                                        <#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
                                        <div class="autofit-col autofit-col-expand">
                                            <#if show_header_search>
                                                <div class="justify-content-md-end mr-4 navbar-form" role="search">
                                                    <@liferay.search_bar default_preferences="${preferences}" />
                                                </div>
                                            </#if>
                                        </div>

                                        <div class="autofit-col idsk-header-web__main-action-search">
                                            <#if show_header_personal_bar>
                                                <@liferay.user_personal_bar />
                                            </#if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="idsk-header-web__nav--divider"></div>
                    <#if has_navigation && is_setup_complete>
                        <#include "${full_templates_path}/navigation.ftl" />
                    </#if>
                </div>
            </header>
        </#if>

        <#if show_breadcrumb>
            <#assign preferences = freeMarkerPortletPreferences.getPreferences(
            "portletSetupPortletDecoratorId", "barebone"
            ) />
            <div class=" container-fluid container-fluid-max-xl idsk-container">
                <@liferay_portlet["runtime"]
                defaultPreferences="${preferences}"
                portletName="com_liferay_site_navigation_breadcrumb_web_portlet_SiteNavigationBreadcrumbPortlet"
                />
            </div>
        </#if>
        <section class="${portal_content_css_class} flex-fill" id="content">
            <#if selectable>
                <@liferay_util["include"] page=content_include />
            <#else>
                ${portletDisplay.recycle()}
                ${portletDisplay.setTitle(the_title)}
                <@liferay_theme["wrap-portlet"] page="portlet.ftl">
                    <@liferay_util["include"] page=content_include />
                </@>
            </#if>
        </section>

        <#if show_feedback>
            <div class="idsk-footer-feedback body-l-bold">
                <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl idsk-container">
                    <div class="idsk-footer-feedback-usefull-question" id="footer-feedback-usefull-question">
                        Boli tieto informácie pre vás užitočné?
                        <div class="idsk-footer-feedback-usefull-buttons">
                            <button class="btn btn-primary idsk-footer-feedback-usefull-question__yes" id="footer-feedback-usefull-question__yes">
                                Áno
                            </button>
                            <button class="btn btn-secondary idsk-footer-feedback-usefull-question__no" id="footer-feedback-usefull-question__no">
                                Nie
                            </button>
                        </div>
                    </div>
                    <div class="idsk-footer-feedback__sent-hidden" id="footer-feedback__sent">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" style="margin-right: 12px;">
                            <path d="M10 0C4.48 0 0 4.48 0 10C0 15.52 4.48 20 10 20C15.52 20 20 15.52 20 10C20 4.48 15.52 0 10 0ZM8 15L3 10L4.41 8.59L8 12.17L15.59 4.58L17 6L8 15Z" fill="#078814"/>
                        </svg>
                        Ďakujeme za Váš čas a hodnotenie! Vaša spätná väzba nám pomáha vylepšovať kvalitu portálu.
                    </div>
                    <div class="idsk-footer-feedback-report" id="footer-feedback-report">
                        <button class="btn btn-secondary idsk-footer-feedback-report-button" id="footer-feedback-report-button">
                            Nahlásiť chybu
                        </button>
                    </div>
                    <div class="idsk-footer-feedback-report-form-hidden" id="footer-feedback-report-form" style="width: inherit;">
                        <p class="text-right">
                            <a class="link-s" id="footer-feedback-report-form-hidden"><b>Zatvoriť</b></a>
                        </p>
                        <div class="idsk-footer-feedback-report-form-instance">
                            <@liferay_portlet["runtime"]
                                portletName="com_liferay_dynamic_data_mapping_form_web_portlet_DDMFormPortlet"
                                instanceId="site_footer"
                                settingsScope="group"/>
                        </div>
                    </div>
                </div>
            </div>
        </#if>
        <#if show_footer>
            <footer id="footer" role="contentinfo">
                <@liferay_portlet["runtime"]
                portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet"
                portletProviderAction=portletProviderAction.VIEW
                instanceId="site_footer"
                settingsScope="group"
                />
            </footer>
        </#if>
    </div>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>