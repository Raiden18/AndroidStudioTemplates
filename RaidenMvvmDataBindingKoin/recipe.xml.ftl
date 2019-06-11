<?xml version="1.0"?>
<recipe>
	<instantiate from="src/Fragment.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}Fragment.kt" />
	<instantiate from="src/KoinModule.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}Module.kt" />
	<instantiate from="src/Navigation.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}Navigation.kt" />
	<instantiate from="src/ViewModel.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}ViewModel.kt" />
	<instantiate from="res/layout/fragment_layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>