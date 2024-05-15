<div class="container-fluid container-fluid-max-xl">
	<#if link.getSiblings()?has_content>
		<#assign cur_link_item = link.getSiblings()>
		<#list 0..cur_link_item?size-1 as i>
			<#if cur_link_item?size = 1>
			  <div class="footer-extended-list-one-full">
			<#else>
				<#if i == 0>
					<div class="footer-extended-list-one">
				<#else>
					<div class="footer-extended-list-two">
				</#if>
			</#if>
			<#if cur_link_item[i].listLinkTitle?has_content>
				<span class="footer-extended-list-title">${cur_link_item[i].listLinkTitle.data}</span>
				<#if cur_link_item[i].listLinkTitle.data?? && cur_link_item[i].listLinkTitle.data == "">
					<#if cur_link_item[0].listLink.getSiblings()[0].linkTitle.data != "">
						<#if i == 0>
								<hr class="footer-selector-list-one"/>
							<#else>
								<hr class="footer-selector-list-two"/>
							</#if>
					<#else>
					</#if>
				<#else>
					<#if cur_link_item?size = 1>
						<hr class="footer-selector-list-one-full"/>
					<#else>
						<#if i == 0>
							<hr class="footer-selector-list-one-title"/>
						<#else>
							<hr class="footer-selector-list-two-title"/>
						</#if>
					</#if>
				</#if>
			</#if>
			<div class="footer-extended-list-col">
				<ul class="footer-extended-list">
					<#list cur_link_item[i].listLink.getSiblings() as cur_item>
          	<li class="footer-extended-list-item">
							<#if cur_item.linkToPage.getData()?has_content>
								<a class="footer-extended-list-item-link link-s" data-senna-off="true" href="${cur_item.linkToPage.getFriendlyUrl()}" title="${cur_item.linkTitle.data}">
									${cur_item.linkTitle.data}
								</a>
							<#else>
								<a class="footer-extended-list-item-link link-s" data-senna-off="true" href="${cur_item.linkToUrl.data}" title="${cur_item.linkTitle.data}">
									${cur_item.linkTitle.data}
								</a>
							</#if>
						</li>
					</#list>
				</ul>
			</div>
			</div>
		</#list>
		<#if cur_link_item?size gt 1 || cur_link_item[0].listLink.getSiblings()[0].listTitle.data != "">
			<hr class="footer-selector-full"/>
		</#if>
	</#if>
	<#if inlineLink.getSiblings()?has_content>
		<ul class="footer-extended-inline-list">
			<#list inlineLink.getSiblings() as cur_item>
				<li class="footer-extended-inline-list-item">
					<#if cur_item.inlineLinkToPage.getData()?has_content>
						<a class="footer-extended-inline-list-item-link link-s" data-senna-off="true" href="${cur_item.inlineLinkToPage.getFriendlyUrl()}" title="${cur_item.inlineLinkTitle.data}">
							${cur_item.inlineLinkTitle.data}
						</a>
					<#else>
						<a class="footer-extended-inline-list-item-link link-s" data-senna-off="true" href="${cur_item.inlineLinkToUrl.data}" title="${cur_item.inlineLinkTitle.data}">
							${cur_item.inlineLinkTitle.data}
						</a>
					</#if>
				</li>
			</#list>
		</ul>
	</#if>
	<div class="footer-text">
		<#if (text.data)??>
			<p class="body-l" style="margin-bottom: 20px;">
				${text.data}
			</p>
		</#if>
		<p class="body-l" style="margin-bottom: 20px;">
			Vytvorené v súlade s <a class="govuk-link" href="https://idsk.gov.sk/" title="Jednotným dizajn manuálom elektronických služieb."> Jednotným dizajn manuálom elektronických služieb.</a>
		</p>
		<p class="body-l">
			Prevádzkovateľom služby je XXX SR.
		</p>
	</div>
	<div class="footer-logo">
		<#if (image.getData())?? && image.getData() != "">
			<img alt="${image.getAttribute('alt')}" data-fileentryid="${image.getAttribute('fileEntryId')}" src="${image.getData()}" />
		</#if>
	</div>
</div>