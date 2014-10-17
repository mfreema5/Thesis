#Bibliometric analysis

Thed van Leeuwen. “Application of bibliometric analysis – Advantages & pitfalls”. Workshop on Research Evaluation in Statistical Sciences, Società Italiana di Statistica, Bologna, 25th March 2010

^(leeuwen@cwts.nl)

*Key concepts in bibliometrics
  * *output*
    * measured through publications
  * *impact*
    * measured through citations


##Bibliometric indicators produced by CWTS

* Basic indicators
  * **P**: number of publications by researcher/research group
    * in journals processed for the Web of Science.
  * **C**: number of received citations
    * excludes self-citations
  * **CPP**: mean number of citations per publication
    * excludes self-citations
  * **Pnc**: percentage of the publications not cited
    * within a certain time-frame
  * **% SC**: percentage self-citations related to an output set.
* Important indicators
  * **CPP/JCSm**: ratio between (real, actual impact) and (mean journal impact)
  * **CPP/FCSm**: ratio between (real, actual impact) and (mean field impact)
  * **JCSm/FCSm**: ratio between (journal impact) and (field impact)
    * indicative of the ‘quality’ of that journal in that field

###Various types of analysis

  * Research profiles
  * Scientific cooperation analysis
  * Knowledge user analysis
  * Highly cited paper analysis
  * Social network analysis

###Citation measurement and ‘windows’

* “Fixed window”
  * Publication years, fixed citation ‘window’.
    * Publications of 2002, with three citation years (namely 2002, 2003, and 2004), followed by 2003, with three years, etc.
      * 2002 publication
        * Cited in: 2002, 2003, 2004
      * 2003 publication
        * Cited in: 2003, 2004, 2005

* “Year blocks”
  * Blocks of publication years with a window decreasing in length.
    * Publications of 2002-2005, with citation window of 4 years (2002-2005), 3 years (2003-2005), 2 years (2004-2005), and 1 year (2005).
      * 2002-2005 publications
        * Cited in: 2002-2005, 2003-2005, 2004-2005, 2005

###Assessment of WoS Coverage

* Total ISI/WoS Database (2002)
  * Citing/Source
    * 100% – WoS
  * Cited/Target:
    * 75% – WoS
    * 25% – Non-WoS journals, books, conference proceedings, reports, etc.

* Overall WoS coverage by main field
  * Excellent ( > 80% )
    * Biochem & Mol Biol Biol Sci – Humans
    * Chemistry
    * Clin Medicine Phys & Astron
  * Very Good ( 60-80% )
    * Appl Phys & Chem Biol Sci – Anim & Plants
    * Psychol & Psychiat
    * Geosciences Soc Sci ~ Medicine
  * Good ( 40-60% )
    * Mathematics & Statistical sciences
    * Economics
    * Engineering
  * Moderate ( < 40% )
    * Other Soc Sci
    * Humanities & Arts

>We can clearly conclude that the application of bibliometric techniques, solely based on WoS (but very likely also Scopus) will not be valid for some of the ‘soft’ fields in the social sciences and the humanities.

>That is why the tool box has to be extended


##The H-Index and its limitations

>The H-Index is the score that indicates the position at which a publication in a set, the number of received citations is equal to the ranking position of that publication.

###Problems with the H-Index

* The *h*-index:
  * Is insensitive to field specific characteristics
    * E.g., difference in citation cultures
  * Does not take into account age and career length of scientists
    * Larger output strongly correlates with a high *h*-index value
  * Is otherwise inconsistent in its behavior

##Consistency: Definition

>A scientific performance measure is said to be consistent if and only if for any two actors A and B and for any number n ≥ 0 the ranking of A and B given by the performance measure does not change when A and B both have a new publication with n citations.

* For
  * any two actors
    * A
    * B
* Relative ranking
  * ( A > B ) or ( B < A )
* Does not change when
  * Both A and B
    * get a new publication
      * both of which each have ‘*n*’ citations

In other words:

  If A ranks higher than B, and both A and B get a new publication, and those new publications both get the same number of citations, A should continue to rank higher than B.

###Consistency and the *h*-index

The *h*-index does not satisfy this definition of consistency.

{
But is that definition a useful one?

* If *h*-index is sensitive to the size of the total body of work
  * A small body of significant work ≈ a large body of insignificant work
    * A = small&significant
    * B = large&insignificant
    * Weight of total body means B > A
    * If A & B both start adding significant pubs, shouldn't A surpass B at some point?
* Maintaining the *status quo* is not *ipso facto* the right thing to do.

##ISI Impact Factors – calculation and validity

>The ISI Impact Factor (IF) is defined as the number of citations received by a journal in year t, divided by the number of citeable documents in that same journal in the years t-1 and t-2

* CWTS analyzed uses and validity of Journal Impact Factor
  * 1995 onwards
  * Important criticisms:
    * Calculated erroneously
    * Not sensitive to differences in composition of the journals
      * (¿ e.g., articles vs. reviews ?)
    * Not sensitive to differences in fields
    * ‘Citation windows’ too short
      * The “correct” citation window is field dependent

###CWTS answer to JIF problems

* JFIS – Journal-to-Field Impact Score
  * calculation based on equally large entities
  * document types taken into account
  * field-normalized
  * citation windows of 1-4 years
    * ¿ “Fixed windows” or “Year blocks” ?










