<?xml version="1.0"?>
<recipe>
	<#if features == 'withClick'>
		<instantiate from="src/AdapterWithClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt" />

    	<instantiate from="src/ViewHolderWithClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}ViewHolder.kt" />
	</#if>


	<#if features == 'withoutClick'>
		<instantiate from="src/AdapterWithoutClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt" />

    	<instantiate from="src/ViewHolderWithoutClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}ViewHolder.kt" />
	</#if>
	
    <instantiate from="res/layout/item_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>