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
  <div class="idsk-header-web__brand">
    <div class="lfr-layout-structure-item-container  container-fluid container-fluid-max-xl" >
        <div class="idsk-header-web__brand-text">
            <div style="float: left">
                Oficiálna stránka <button class="idsk-header-web__brand-button lrsk-expanding "
                                          data-text-for-hide="Skryť panel"
                                          data-text-for-show="Rozbaliť panel"
                                          data-expand-target="idsk-header-web__brand_detail"><b>verejnej správy SR</b>
                    <span class="idsk-header-web__link-arrow"></span>
                </button>
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
        <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl">
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
            <header id="banner">
                <div class="navbar navbar-classic navbar-top py-3">
                    <div class="container-fluid container-fluid-max-xl user-personal-bar">
                        <div class="align-items-center autofit-row">
                            <a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md"
                               href="${site_default_url}"
                               title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                                <img alt="${logo_description}" class="mr-2" height="50" src="${site_logo}"/>

                                <#if show_site_name>
                                    <h1 <#if show_control_menu>aria-hidden="true"</#if>
                                        class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
                                </#if>
                            </a>
                            <#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
                            <div class="autofit-col autofit-col-expand">
                                <#if show_header_search>
                                    <div class="justify-content-md-end mr-4 navbar-form" role="search">
                                        <@liferay.search_bar default_preferences="${preferences}" />
                                    </div>
                                </#if>
                            </div>
                            <#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone"}) />
                            <div class="autofit-col">
                                <#if show_header_personal_bar>
                                <@liferay.user_personal_bar />
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="navbar navbar-classic navbar-expand-md navbar-light pb-3">
                    <div class="container-fluid container-fluid-max-xl">
                        <a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs"
                           href="${site_default_url}" rel="nofollow">
                            <img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}"/>

                            <#if show_site_name>
                                <h2 <#if show_control_menu>aria-hidden="true"</#if>
                                    class="font-weight-bold h2 mb-0 text-dark">${site_name}</h2>
                            </#if>
                        </a>

                        <#include "${full_templates_path}/navigation.ftl" />
                    </div>
                </div>
            </header>
        </#if>

        <#if show_breadcrumb>
            <#assign preferences = freeMarkerPortletPreferences.getPreferences(
            "portletSetupPortletDecoratorId", "barebone"
            ) />
            <div class=" container-fluid container-fluid-max-xl">
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
                <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl">
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