<div class="container-fluid container-fluid-max-xl">
	<#if extendedList.getSiblings()?has_content>
		<#assign extendedList_item = extendedList.getSiblings()>
		<#list 0..extendedList_item?size-1 as i>
			<#if extendedList_item?size = 1>
			  <div class="footer-extended-list-one-full">
			<#else>
				<#if i == 0>
					<div class="footer-extended-list-one">
				<#else>
					<div class="footer-extended-list-two">
				</#if>
			</#if>
			<#if extendedList_item[i].extendedListTitle?has_content>
				<span class="footer-extended-list-title">${extendedList_item[i].extendedListTitle.data}</span>
				<#if extendedList_item[i].extendedListTitle.data?? && extendedList_item[i].extendedListTitle.data == "">
					<#if extendedList_item[0].extendedListLink.getSiblings()[0].extendedListText.data != "">
						<#if i == 0>
								<hr class="footer-selector-list-one"/>
							<#else>
								<hr class="footer-selector-list-two"/>
							</#if>
					<#else>
					</#if>
				<#else>
					<#if extendedList_item?size = 1>
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
					<#list extendedList_item[i].extendedListLink.getSiblings() as cur_item>
						<#if cur_item.extendedListText.data?? && cur_item.extendedListText.data == "">
						<#else>
							<li class="footer-extended-list-item">
								<a class="footer-extended-list-item-link link-s" data-senna-off="true" href="${cur_item.extendedListUrl.data}" title="${cur_item.extendedListText.data}">
									${cur_item.extendedListText.data}
								</a>
							</li>
						</#if>
					</#list>
				</ul>
			</div>
			</div>
		</#list>
		<#if extendedList_item?size gt 1 || extendedList_item[0].extendedListLink.getSiblings()[0].extendedListText.data != "">
			<hr class="footer-selector-full"/>
		</#if>
	</#if>
	<#if extendedInlineListLink.getSiblings()?has_content>
		<ul class="footer-extended-inline-list">
			<#list extendedInlineListLink.getSiblings() as cur_item>
				<#if cur_item.extendedInlineListText.data?? && cur_item.extendedInlineListText.data == "">
				<#else>
					<li class="footer-extended-inline-list-item">
						<a class="footer-extended-inline-list-item-link link-s" data-senna-off="true" href="${cur_item.extendedInlineListUrl.data}" title="${cur_item.extendedInlineListText.data}">
							${cur_item.extendedInlineListText.data}
						</a>
					</li>
				</#if>
			</#list>
		</ul>
	</#if>
	<div class="footer-text">
		<p class="body-l">
			<#if (text.data)??>
				${text.data}
			</#if>
		</p>
		<p class="body-l">
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