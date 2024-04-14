<button class="idsk-header-web__brand-button lrsk-expanding" aria-label="Rozbaliť jazykové menu" aria-expanded="false" data-text-for-hide="Skryť jazykové menu"
        data-text-for-show="Rozbaliť jazykové menu"
        data-expand-target="lrsk_language-list"  >
    <#if locale?has_content>
        ${  stringUtil.upperCaseFirstLetter( localeUtil.fromLanguageId(locale).getDisplayLanguage(localeUtil.fromLanguageId(locale)) )}
    </#if>
    <span class="idsk-header-web__link-arrow"></span>
</button>


<#if entries?has_content>
    <ul class="idsk-header-web__brand-language-list lrsk-expandable" id="lrsk_language-list">
        <#list entries as entry>
            <#if !entry.isDisabled()>
                <#assign  active="" />
                <#if  entry.getLanguageId()==locale >
                    <#assign  active="-active" />
                </#if>
                <li class="idsk-header-web__brand-language-list-item">
                    <@liferay_aui["a"]
                    cssClass="language-entry-long-text govuk-link idsk-header-web__brand-language-list-item-link"+active
                    href=entry.getURL()
                    label=stringUtil.upperCaseFirstLetter(entry.getLongDisplayName())
                    lang=entry.getW3cLanguageId()
                    localizeLabel=false
                    />
                </li>
            </#if>
        </#list>
    </ul>
</#if>