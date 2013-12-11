---
title: Making Predictions
nav: three
subnav: three
layout: default
---

##Is the Supreme Court Ideologically Biased?

Each justice of the Supreme Court is appointed by a President of the United States. Even if this choice is supposed to be the most objective, one may think that the justice was choosen because of his ideological
closenness to the President's ideas. We try to see if this bias exists and has any impact on the Supreme Court decisions.

###Descriptive Graphs

On each case raised to the Supreme Court, each justice takes a decision and the final decision is the choice of the Majority. A justice can choose between to directions:

* Liberal
* Conservative

Here is the barplot of the percentages of Liberal/Conservative decisions taken by justices appointed by Democrat/Republican Presidents:

![alt text]({{site.baseurl}}img/pred1_bar_1.png "Title")

This graph does not describe any particular trend. We can still observe as expected that Democrat-appointed Justices vote 59% of the time Liberal, while it is 52% for the Republican appointed ones.
Each case in the Spaeth dataset is associated with an 'Issue Area' that describes the general type of the case. If we draw the same graph as above for each of those areas:

![alt text]({{site.baseurl}}img/pred1_bar_2.png "Title")

```
def iamcode():
	return "quoi?"
```