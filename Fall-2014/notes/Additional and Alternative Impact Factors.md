#Additional and Alternative Impact Factors


A not-in-any-way-compleat list:

* H-index
  * Hirsch, Jorge E. "An index to quantify an individual's scientific research output." *Proceedings of the National academy of Sciences of the United States of America* 102, no. 46 (2005): 16569-16572.
* SNIP (Source Normalized Impact per Paper)
  * Moed, Henk F. "Measuring contextual citation impact of scientific journals." *Journal of Informetrics* 4, no. 3 (2010): 265-277.
* SJR (Scimago Journal Ranking)
  * González-Pereira, Borja, Vicente P. Guerrero-Bote, and Félix Moya-Anegón. "A new approach to the metric of journals’ scientific prestige: The SJR indicator." *Journal of informetrics* 4, no. 3 (2010): 379-391.
* Cited Half-life
  * ¿tracks *when* citations “peak” to indicate nature of impact?
* Immediacy Index of the ISI
  * ¿Similar to JIF, but more recent window?
* PageRank
  * ¿variant of “eigenvector centrality” algorithm?

----

From Moed (2010):

>During the past years, numerous other approaches to the measurement and ranking of journal impact or status were explored. Without claiming completeness, important approaches are:

* Ranking similar to percentile ranking
* Application of a (variant of the) PageRank algorithm to the journal-to-journal citation network
* Calculation of *h*-index for scientific journals based on citations
* Modeling the asymptotic number of citations collected by papers published in a journal, in order to quantify both *typical* impact, and *range* of impacts of papers
* Using the frequency of downloads of papers to calculate a journal's ‘usage’ factor
* Modeling the citation distributions in a journal as a negative binomial distribution,
and characterizing a journal’s impact using the parameters of that distribution


##SNIP

>“This paper explores a new indicator of journal citation impact, denoted as source normalized impact per paper (SNIP). It measures a journal’s contextual citation impact, taking into account characteristics of its properly defined subject field, especially the frequency at which authors cite other papers in their reference lists, the rapidity of maturing of citation impact, and the extent to which a database used for the assessment covers the field’s literature….”

>“SNIP is defined as the ratio of the journal’s citation count per paper and the citation potential in its subject field. It aims to allow direct comparison of sources in different subject fields.” (Moed 2010)


SNIP corrects for differences between fields and topics within fields, by addressing:

* Citation behaviors
* Size of field/topic
* Citations made to items not counted as citable

SNIP doesn't address any other problems with the JCR's Journal Impact Factor.

One interesting feature is that it doesn't rely on the pre-categorization of journals into fields or topics.  It uses the inter-relationship of citations to identify the context of an (¿ article|journal ?).


##SJR

>“The SJR indicator is a size-independent metric aimed at measuring the current "average prestige per paper" of journals for use in research evaluation processes” that is “based on eigenvector centrality.” (González-Pereira 2010)

####“eigenvector centrality”

Lots of mathematical jargonism in the explanation of this in González-Pereira (2010).  As [Inigo Montoya](http://www.imdb.com/character/ch0003786/quotes) said, “Let me explain. … No, there is too much. Let me sum up.”

Every journal is a node, each citation in that journal makes a connection to the node of the journal containing the article being cited.  This mythical stuff “prestige” is shifted between nodes based on the strength of the connection between the two nodes.  The strength of the connection is determined by the what fraction of the total of all citations are included in that connection.

----

Math digression:

* Three nodes (`A`, `B` and `C`) with 34 citations between them:

| node ➜ node | citation count | percentage of total |
|--------------|----------------|---------------------|
|   A ➜ B     |  3             |   8.8 %             |
|   A ➜ C     |  9             |  26.5 %             |
|   B ➜ A     |  5             |  14.7 %             |
|   B ➜ C     |  5             |  14.7 %             |
|   C ➜ A     |  7             |  20.6 %             |
|   C ➜ B     |  5             |  14.7 %             |

So `A` has to give more “prestige” to `C` than to `B`.  `B` gives to `A` and `C` equally, while `C` gives more to `A` than to `B`.  The end result is that `B`'s prestige migrates to `A` and `C`, with more going to `C`.  So, the nodes would be ranked: `C`, `A`, `B`.

----

You guess at a prestige for all the nodes, then start iterating through shifts of prestige until you sink into a minima.  (Do they know if it's a global or local minima?)  You rank the journals based on the resultant prestige of their nodes.

####Advantages of SJR over JIF:

* Not all citations count the same; instead their weighted by the “prestige” of the journal in which they occur.
  * “…The SRJ indicator establishes different values for citations according to the scientific influence of the journals that generate them.” (González-Pereira 2010)
* Self-citations are capped.
  * “It restricts a journal's self-citation to a maximum of 33% of its issued references, so that excessive self-citation will not involve artificially inflating a journal's value, but without touching the normal process of self-citation.” (González-Pereira 2010)
    * (One third seems arbitrary.  And any editor with a brain will make sure there are *at least* that many self-citations in their journal. Does setting a ceiling always create a target?)













