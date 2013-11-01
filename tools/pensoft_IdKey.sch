<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="tp" uri="http://www.plazi.org/taxpub"/>
    <p>pensoft-IdKey.sh: Check that td descendants of table with @content-type of "key" have key attribute values "lead", "lead-to", "thesis-desc", "antithesis-desc".</p>
    <pattern name="IdentificationKey">
        <rule context="table[@content-type = 'key']//td">
            <assert
                test="@content-type = 'lead' or @content-type = 'lead-to' or @content-type = 'thesis-desc' or @content-type = 'antitheis-desc'"
                > A <emph>td</emph> child of <emph>table</emph> with <emph>content-t/ype="key"</emph>
                must have a @content-type with one of the values "lead", "lead-to", "thesis", or
                "antitheis" </assert>
        </rule>
    </pattern>
</schema>
