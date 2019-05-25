<?xml version="1.0"?>
<recipe>
    <instantiate from="src/Adapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt" />

    <instantiate from="src/ViewHolder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}ViewHolder.kt" />

    <instantiate from="res/layout/item_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>