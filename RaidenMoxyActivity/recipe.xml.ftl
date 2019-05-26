<?xml version="1.0"?>
<recipe>
	<#if screenType == 'fragment'>
		<instantiate from="src/MoxyFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}Fragment.kt" />
	</#if>
	<#if screenType == 'activity'>
		<instantiate from="src/MoxyActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}Activity.kt" />
	</#if>

	<instantiate from="src/Dagger.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}Component.kt" />
                   
      <instantiate from="res/layout/item_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

		<instantiate from="src/MoxyPresenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenName}Presenter.kt" />
		<instantiate from="src/MoxyView.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenName}View.kt" />

</recipe>