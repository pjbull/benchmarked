---
title: Gathering Data on the Court
nav: one
subnav: one
layout: default
---

![alt text]({{site.baseurl}}img/scb.jpg "The Supreme Court")

##Data Description

As a matter of legal record, the proceedings of the US Supreme Court are technically part of the public domain. However, structured representations of the court's records are almost entirely behind 
the paywalls of Lexis-Nexis and Westlaw. We've compiled data on the court from four separate pubically available sources that range from a well-cleaned, curated datasets to raw PDF documents of legal 
proceedings. Each source provides a different angle on the history of court that we can leverage in our analysis.

###The Harold J. Spaeth Dataset

The [Supreme Court Database](http://scdb.wustl.edu/index.php) is a publicly available data bank started in the 1980s by Harold J Spaeth, PhD, JD with a grant from the National Science Foundation to facilitate research 
on the Supreme Court. The accuracy of data has been externally validated and is used widely by legal academics for studies of Supreme Court decisions. From its inception, the databank has expanded 
to document every vote made by the Supreme Court since 1946. In its current form, the data bank contains 247 variables for each vote. The variables, or features, of the dataset can be generalized into 
six main groups: identification, background, chronological, substantive, outcome, and voting/opinion variables. To make the database more tenable, we refined the database to fifty features of interest. 
Specifically, features were chosen based on their relevance to objectifying patterns within Supreme Court decisions. Numerous features, such as 'Docket Number', 'Case Number', and 'Natural Court', were 
able to be removed simply because the variable represent irrelevant, procedural data that was present only due to the thoroughness of the data bank's documentation of the votes or because the variable was deemed 
to be supplementary to data present in the retained features. The retained features with which exploratory analysis is proceed upon include information on the origins each case brought before the Court 
for review, details of Judge votes/opinions, and statistics on Court composition.

###Wikipedia Data on Supreme Court Justices

The [Supreme Court](http://en.wikipedia.org/wiki/Supreme_Court_of_the_United_States) is part of the judicial branch of government, and thus not a political office. However, each justice is appointed by a sitting 
President, with a political affiliation to a particular party. In order to gain insight into the political leanings of the court, we scraped Wikipedia for the political parties of the appointing President 
for each justice in the Spaeth dataset. We then added this party as a feature of our dataset.

###The CourtListener API

[CourtListener](https://www.courtlistener.com/) is a free legal search engine that is developed and maintained by the [Free Law Project](http://freelawproject.org/). CourtListener provides a 
[free API](https://www.courtlistener.com/api/) for access to both data in bulk and individual queries. We used CourtListener's bulk-data API to get information about every court case in the Spaeth dataset, 
including which other cases it cited. The data was retrieved as XML and then parsed and restructured so that it could be compiled with the Spaeth data. Using these citations, we created a network of 
influence among the Supreme Court opinions.

###Supreme Court Briefs Made Available by the American Bar Association

The [American Bar Association](http://www.americanbar.org/aba.html) publishes the text of briefs to the Supreme Court in PDF format. Before each case the court takes, the petitioner and the respondent submit 
a [merit brief](http://en.wikipedia.org/wiki/Brief_%28law%29) to the court which outlines their argument. We created a script to download all of the pdfs from 2003-2009, open the documents, and parse them for citations of Supreme Court opinions. We then matched these briefs with the opinion that the court gave when the case was decided.
	