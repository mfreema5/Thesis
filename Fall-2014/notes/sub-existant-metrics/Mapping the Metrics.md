#Mapping the Metrics

##Decoder Ring

###Name-brand metrics

| TLA  |  Name                              |  Data source(s)                                       | More info |
|------|------------------------------------|-------------------------------------------------------|-----------|
| JIF  | Journal Impact Factor              | [Web of Science](http://wokinfo.com/about/mjl/)       | [Thomson Reuters](http://thomsonreuters.com/journal-citation-reports/)  |
| II-WoS | Immediacy Index                  | [Web of Science](http://wokinfo.com/about/mjl/)       |  |
| JFIS | Journal-to-Field Impact Score      | [Web of Science](http://wokinfo.com/about/mjl/)       | CWTS  |
| SNIP | Source Normalized Impact per Paper | [Scopus](http://www.elsevier.com/online-tools/scopus) | [CWTS Journal Indicators](http://www.journalindicators.com/methodology) |
| RIP  | Raw Impact per Publication         | [Scopus](http://www.elsevier.com/online-tools/scopus) | [CWTS Journal Indicators](http://www.journalindicators.com/methodology) |
| SJR  | SCImago Journal Rank               | [Scopus](http://www.elsevier.com/online-tools/scopus) | [SCImago Journal & Country Rank](http://www.scimagojr.com/)             |

Note:
* Institute for Scientific Information (ISI) *begat*
  * ISI Web of Knowledge *begat*
    * Thomson Scientific [Web of Science](http://thomsonreuters.com/thomson-reuters-web-of-science/)
      * Science Citation Index
      * Social Science Citation Index
      * Arts & Humanities Citation Index


###DIY metrics

| TLA    |  description                 |  Data source(s)                                       | More info |
|--------|------------------------------------|-------------------------------------------------------|-----------|
| *h*-I  | *h*-index                          | (*multiple possible?*)                                | Hirsch, J. E. 2005                                                       |

  * Hirsch, J. E. 2005. “An Index to Quantify an Individual’s Scientific Research Output.” *Proceedings of the National Academy of Sciences of the United States of America* 102 (46): 16569–72. doi:[10.1073/pnas.0507655102](http://doi.org/10.1073/pnas.0507655102).

* an actor has an *h*-index of “h” when
  * they have “h” number of papers that
    * have ≥ “h” number of citations
  * E.g., 5 papers with 5 or more citations.


###CWTS bibliometric indicators

| TLA           |  description                                           |
|---------------|--------------------------------------------------------|
| **P**         | number of publications by [actor]                      |
| **C**         | number of received citations                           |
| **CPP**       | mean number of citations per pub                       |
| **Pnc**       | percentage of pubs not cited                           |
| **% SC**      | percentage self-citations related to an output set     |
| **CPP/JCSm**  | ratio (mean actor cites/pub) to (mean journal impact)  |
| **CPP/FCSm**  | ratio (mean actor cites/pub) to (mean field impact)    |
| **JCSm/FCSm** | ratio (journal impact) to (field impact)               |


##Relevant features

| index / indicator | article-level | silo'd | mono-db |
|-------------------|---------------|--------|---------|
| JIF               | N             |  Y     |  Y      |
| II-WoS            | N             |  Y     |  Y      |
| JFIS              | N             |  Y     |  Y      |
| SNIP              | N             |  Y     |  Y      |
| RIP               | N             |  Y     |  Y      |
| SJR               | N             |  Y     |  Y      |
| *h*-Index         | Y             |  Y     |  N      |
| **P**             | Y             |  Y     |  N      |
| **C**             | Y             |  Y     |  N      |
| **CPP**           | Y             |  Y     |  N      |
| **Pnc**           | Y             |  Y     |  N      |
| **% SC**          | Y             |  Y     |  N      |
| **CPP/JCSm**      | Y             |  Y     |  N      |
| **CPP/FCSm**      | Y             |  Y     |  N      |
| **JCSm/FCSm**     | Y             |  Y     |  N      |

* “silo'd” - Is the metric restricted to academia?
* “mono-db” – Does it use one and only one database?




