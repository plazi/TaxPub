
## Project Repository
* https://github.com/plazi/TaxPub

## Papers
* Catapano T. 2010. TaxPub: _An Extension of the NLM/NCBI Journal Publishing DTD for Taxonomic Descriptions._ Journal Article Tag Suite Conference (JATS-Con) Proceedings 2010 [Internet]. Bethesda (MD): National Center for Biotechnology Information (US); 2010. Available from: [http://www​.ncbi.nlm.nih​.gov/books/NBK47081/](http://www.ncbi.nlm.nih.gov/books/NBK47081/)
> TaxPub is an extension of the NLM/NCBI Journal Publishing DTD (Version 3.0) for the encoding of the literature of biological taxonomy. A key feature of this literature is the taxonomic description: publications or sections of publications that name and describe species and other taxonomic information. Given that it is estimated that the majority of all species have yet to be described, and that some 15-20,000 new species are described each year, and that markup might be applied prior to publication at less expense than applying markup to existing publications, TaxPub aims at providing a tagset for the encoding of new taxonomic literature. TaxPub extends the Publishing ("Blue") DTD parsimoniously. A few phrase-level elements are available at the relevant places throughout the entire DTD. Most of the extension, however, occurs in a single section-level element <tp:taxon-treatment>. The development of the extension proceeded smoothly, but several challenges have been encountered: lack of consensus on the components of taxonomic descriptions; relationship and alignment of TaxPub to other related schemas in the field; decisions on creating new elements or using existing NLM DTD elements and how to document and validate the usages; resistance to DTD as the XML schema language; and the efficiency of creating a superset extension rather than utilizing other simpler profiling mechanisms
* Penev L, Catapano T, Agosti D, et al. _Implementation of TaxPub, an NLM DTD extension for domain-specific markup in taxonomy, from the experience of a biodiversity publisher._ In: Journal Article Tag Suite Conference (JATS-Con) Proceedings 2012 [Internet]. Bethesda (MD): National Center for Biotechnology Information (US); 2012. Available from: [http://www.ncbi.nlm.nih.gov/books/NBK100351/](http://www.ncbi.nlm.nih.gov/books/NBK100351/)
> TaxPub was created as an XML extension to the general JATS to provide domain-specific markup for prospective publishing in the area of biological systematics. The core idea of the schema is to delimit descriptions of taxa, or treatments, within an article and also several sub-elements within a treatment, and to use these individual portions of information for various purposes. TaxPub was developed in a close cooperation between the author (Terence Catapano), a community interested in such markup (Plazi), the NLM JATS group and a journal publisher (Pensoft). Since July 2009, TaxPub has been routinely implemented in the everyday publishing practice of Pensoft, to provide: (1) Semantically enhanced, domain-specific XML versions of articles for archiving in PubMedCentral (PMC); (2) Visualization of taxon treatments on PMC; (3) Export of taxon treatments to various aggregators, such as Encyclopedia of Life, Plazi Treatment Repository, and the Wiki Species-ID.net.

## Sample article

* Marin I. 2020. Thoridae (Crustacea: Decapoda) can penetrate the Abyss: a new species of Lebbeus from the Sea of Okhotsk, representing the deepest record of the family. European Journal of Taxonomy 604: 1–35. https://doi.org/10.5852/ejt.2020.604
  * HTML: http://taxpub.org/samples/ejt/ejt-604_marin_xml_id_tp.html
  * XML: http://taxpub.org/samples/ejt/ejt-604_marin_xml_id_tp.xml

* sample encoding of treatment:

```
<tp:taxon-treatment>
      <tp:mixed-nomenclature>
        <tp:taxon-name>Lebbeus sokhobio sp. nov.<object-id/></tp:taxon-name>
        <xref rid="fig-1">Figs 1–6</xref>
      </tp:mixed-nomenclature>
      <tp:treatment-sec sec-type="reference_group">
        <tp:nomenclature-citation-list>
          <tp:nomenclature-citation><tp:taxon-name>Lebbeus</tp:taxon-name> sp. – <xref>Marin 2018:
            331</xref></tp:nomenclature-citation> . </tp:nomenclature-citation-list>
      </tp:treatment-sec>
      <tp:treatment-sec sec-type="materials_examined">
        <title>Type material</title>
        <p><tp:material-citation>
            <named-content content-type="typeStatus"> Holotype </named-content>
            <named-content content-type="collectingRegion">SEA OF OKHOTSK</named-content> •
              <named-content content-type="specimenCount">♀</named-content> ; <named-content
              content-type="collectingMunicipality">NE slope of Kuril Basin</named-content> ,
              <named-content content-type="location">st. 1-10</named-content> ; <named-content
              content-type="geoCoordinate">46˚08.9΄ N</named-content> , <named-content
              content-type="geoCoordinate">145˚59.4΄ E–</named-content> 46˚09.0΄ N, 145˚59.5΄ E;
            depth <named-content content-type="elevation">
              <named-content content-type="quantity">3303–3308 m</named-content>
            </named-content> ; <named-content content-type="collectingDate">
              <named-content content-type="date">10 Jul. 2015</named-content>
            </named-content> ; <named-content content-type="collectionCode">ZMMU</named-content>
            <named-content content-type="specimenCode">Ma5836</named-content> .
          </tp:material-citation></p>
```

## DTD Documentation
  * tp:taxon-treatment: 
http://taxpub.org/v1-0/taglibrary/#p=elem-tp-taxon-treatment
  ```
    ( tp:treatment-meta?, ( tp:nomenclature | tp:mixed-nomenclature ), ( tp:treatment-sec | tp:taxon-treatment )*, ref-list? )
  ```
## Status
  * Version 1.0
  * Based on JATS Publishing v1.3
