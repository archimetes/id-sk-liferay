<div class="idsk-header-web__nav idsk-header-web__nav--mobile ">
	<div class="container-fluid container-fluid-max-xl idsk-container">
		<div class="autofit-col">
			<div class="idsk-header-web__nav--mobile--title">
				Menu	
			</div>
			<div class="idsk-header-web__nav--mobile--divider"></div>
			<div class="">
				<nav class="idsk-header-web__nav-bar--buttons" id="navigation"   >
					<ul class="idsk-header-web__nav-list " aria-label="<@liferay.language key="site-pages" />" role="menubar">
						<#list nav_items as nav_item>
							<#assign nav_item_attr_has_popup = "" nav_item_css_class = "idsk-header-web__nav-list-item " nav_item_layout = nav_item.getLayout()/>
							<#if nav_item.isSelected()>
								<#assign nav_item_attr_has_popup = "aria-haspopup='true' aria-expanded='true'" nav_item_css_class = "idsk-header-web__nav-list-item  selected"/>
							</#if>

							<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
								<#if nav_item.hasChildren()>
									<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="#" ${nav_item.getTarget()}
										role="menuitem"
										title="${nav_item.getName()}"
										class="link idsk-header-web__nav-list-item-link"
										aria-label="Rozbaliť ${nav_item.getName()} menu"
										data-text-for-hide="Zavrieť ${nav_item.getName()} menu"
										data-text-for-show="Rozbaliť ${nav_item.getName()} menu"
									>${nav_item.getName()}
										<div class="idsk-header-web__link-arrow"></div>
										<div class="idsk-header-web__link-arrow-mobile"></div>
									</a>
									<div class="idsk-header-web__nav-submenu">
										<div class="container-fluid container-fluid-max-xl container">
											<div class="autofit-row">
												<ul class="idsk-header-web__nav-submenu-list" role="menu" aria-label="Vnútorná navigácia">
													<#list nav_item.getChildren() as nav_child>
														<#assign
														nav_child_css_class = "idsk-header-web__nav-submenu-list-item "
														/>
														<#if nav_item.isSelected()>
															<#assign
															nav_child_css_class = "selected"
															/>
														</#if>
														<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
															<a class="link idsk-header-web__nav-submenu-list-item-link" aria-labelledby="layout_${nav_child.getLayoutId()}"
																href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem"><span>${nav_child.getName()}</span></a>
														</li>
													</#list>
												</ul>
											</div>
										</div>
									</div>
								<#else>
									<a class="link idsk-header-web__nav-list-item-link" href=" ${nav_item.getURL()}"  title="${nav_item.getName()}" >
											${nav_item.getName()}
									</a>
								</#if>
							</li>
						</#list>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
