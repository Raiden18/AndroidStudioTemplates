<?xml version="1.0"?>
<recipe>
	<#if features == 'withClick'>
		<instantiate from="src/AdapterWithClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt" />

    	<instantiate from="src/ViewHolderWithClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}ViewHolder.kt" />
                   
      <instantiate from="res/layout/item_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	</#if>


	<#if features == 'withoutClick'>
		<instantiate from="src/AdapterWithoutClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt" />

    	<instantiate from="src/ViewHolderWithoutClick.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}ViewHolder.kt" />

      <instantiate from="res/layout/item_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	</#if>
	 

	 <!-- RADIO SELECTABLE  START-->
   <#if features == 'radioSelectable'>
      <instantiate from="src/RadioSelectableAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt" />

      <instantiate from="src/RadioSelectableViewHolder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}ViewHolder.kt" />

      <instantiate from="res/layout/selectable_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

      <instantiate from="src/RadioSelectableUi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelClassId}.kt" />
   </#if>

   <#if isNeededSelectableArray>
          <instantiate from="src/RadioSelectableArrayList.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/UiSelectableArrayList.kt" />

      </#if>
 <!-- RADIO SELECTABLE  END-->

</recipe>