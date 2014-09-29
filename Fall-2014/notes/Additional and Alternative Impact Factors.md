#Additional and Alternative Impact Factors

A not-in-any-way-complete list of products and/or methods:

* Ranking similar to percentile ranking
* Calculation of *h*-index for scientific journals based on citations
  * Hirsch, Jorge E. "An index to quantify an individual's scientific research output." *Proceedings of the National academy of Sciences of the United States of America* 102, no. 46 (2005): 16569-16572.
* SNIP (Source Normalized Impact per Paper)
  * Moed, Henk F. "Measuring contextual citation impact of scientific journals." *Journal of Informetrics* 4, no. 3 (2010): 265-277.
* SJR (Scimago Journal Ranking)
  * González-Pereira, Borja, Vicente P. Guerrero-Bote, and Félix Moya-Anegón. "A new approach to the metric of journals’ scientific prestige: The SJR indicator." *Journal of informetrics* 4, no. 3 (2010): 379-391.
* Cited Half-life
  * Tracks *when* citations “peak” to indicate nature of impact(?)
* Immediacy Index of the ISI
  * Similar to JIF, but more recent window(?)
* PageRank
  * Variant of “eigenvector centrality” algorithm(?)
* Modeling the asymptotic number of citations collected by papers published in a journal, in order to quantify both *typical* impact, and *range* of impacts of papers
* Using the frequency of downloads of papers to calculate a journal's ‘usage’ factor
* Modeling the citation distributions in a journal as a negative binomial distribution,
and characterizing a journal’s impact using the parameters of that distribution
* Altmetrics (as in “Altmetrics LLP”)


##SNIP

>“This paper explores a new indicator of journal citation impact, denoted as source normalized impact per paper (SNIP). It measures a journal’s contextual citation impact, taking into account characteristics of its properly defined subject field, especially the frequency at which authors cite other papers in their reference lists, the rapidity of maturing of citation impact, and the extent to which a database used for the assessment covers the field’s literature….”

>“SNIP is defined as the ratio of the journal’s citation count per paper and the citation potential in its subject field. It aims to allow direct comparison of sources in different subject fields.” (Moed 2010)

SNIP corrects for differences between fields and topics within fields, by addressing:

* Citation behaviors
* Size of field/topic
* Citations made to items not counted as citable

SNIP doesn't address any other problems with the JCR's Journal Impact Factor.

One interesting feature is that it doesn't rely on the pre-categorization of journals into fields or topics.  It uses the inter-relationship of citations to identify the context of an (article|journal).


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
    * *(One third seems arbitrary.  And any editor with a brain will make sure there are  AT LEAST that many self-citations in their journal.  Does setting a ceiling always create a target?)*

----

##Altmetrics “Manifesto”

“No one can read everything.”  (Priem, J., Taraborelli, D., Groth, P., & Neylon, C. 2010. *alt-metrics: A manifesto.* http://altmetrics.org/manifesto/)

Traditional filters:
* Peer review process for publication
* Citation counts
* Journal rankings

Problems with those:
* Slow
* Discourage innovation / encourage *status quo*
* Lack of accountability for peer-reviewers
* Peer-review doesn't *prevent* publication, it just pushes lower-value articles to lower-prestige journals (in ideal circumstances); those articles are still in the population.
* Too narrow in what they count, index, or include
* Too focused within academia
* Ignore context of citations (a critical citation counts as much as a positive one)
* Indicies are mis-used to assign funding and evaluate personnel
* Many are easy to game

Claims:
* “Altmetrics look beyond counting and emphasize semantic content.”
* “…Altmetrics reflect the impact of the article itself, not its venue.
  * *(Somewhat specious, since the venue typically has a major effect on the impact.)*
* Altmetrics will include the previously ignored:
  * “impact outside the academy”
  * “impact of influential but uncited work, and”
  * “impact from sources that aren't peer-reviewed.”

“Future work needed”
* Correlate altmetrics and existing measures
* Predict citations using altmetrics
  * *(Odd choice… did they already have that paper in progress?)*
* Compare altmetrics to expert opinions (¿of journal or article quality?)

>“But given the crisis facing existing filters….”

The what now?

##Altmetric “Case Study”

###Adie, Euan, and William Roe. "Altmetric: enriching scholarly content with article-level discussion and metrics." *Learned Publishing* 26, no. 1 (2013): 11-17.

This is specifically about the firm [Altmetric LLP](http://www.altmetric.com/about.php).

Collects/analyzes:

* Download statistics (from?)
* Reference-manager citations (probably: Mendeley, CiteULike and Zotero)
* Links from “mainstream media sources” (how?)
* Social media shares (e.g., Twitter)
* Social media discussions (e.g., reddit)

####Active versus passive citations
They never mention what I see as a major difference between data that comes from things like downloads and reference-manager information, and the traditionally-used citations data.  Which is that the former tracks the unconsidered assignment of importance.  Meaning, you consider what sources to cite; you have preferences about what sources to use, and which to avoid.  You may (or more likely: “should”) adjust what sources you cite based on the audience you expect, or based on to which journal you'll be submitting something, or even whom you expect to receive it for reviewing.

What papers you download to read/use or whatever aren't nearly as considered.  You may hate some sonofabitch and avoid citing him as much as you can, but if he does good work, you'll download his papers.

Though, you may download them to look for things to criticize. But that probably doesn't matter.  It's probably best *not* to differentiate between “positive” and “negative” citations.  Either way, you considered the thing being cited as more important than all the other things that you might have been cited in its place.

But back to the main point here: passive citations seem potentially more “honest” than active ones.  Less “gamed” on a individual level.

####“What the future holds”

>“As the volume of data increases, so does the potential signal – the challenge for Altmetric will be to help people identify the kinds of impact that matter to them, to supply them with the data they need and to help them filter out the noise.” (Adie & Roe, 2013)

The interesting bit being “the kinds of impact that matter to them”.  They don't go into much more detail on that.  (ot surprising since they are trying to sell Altmetrics' services.  It can be anything you want!  Or something like that.)


----

* Priem, Jason, and Bradely H. Hemminger. "[Scientometrics 2.0: New metrics of scholarly impact on the social Web](http://pear.accc.uic.edu/ojs/index.php/fm/article/view/2874/2570)." *First Monday* 15, no. 7 (2010).

