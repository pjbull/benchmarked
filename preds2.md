---
title: Making Predictions
nav: three
subnav: three
layout: default
---

## Using the Citations of Supreme Court Cases in the Briefs Submitted by Each Side

One of the pillars of the legal system in the United States is precedent--that is, if the court has already decided an issue, it will apply the same reasoning if that issue or an analogous one arises again. Written documents that are part of legal proceedings, such as opinions and briefs, cite explicitly any previous cases that support their argument or touch on the issues at hand. We wonder if understanding how often and when a case is cited could in turn be used to predict the outcome of future cases. To do this, we create a network of citations for the opinions of the Supreme Court. The opinion is written by the court when it makes a decision and cites that cases that raised issues it felt were worth addressing or had some precedential value. Briefs are submitted by both parties (petitioner and respondent) as part of their arguments to the court. These briefs also cite heavily previous court cases that they believe affect the issue at hand.

We wonder if we can model legal precedent using network statistics and thus be able to predict a new case based on the precedent of the cases cited by the briefs from both sides.

To do so we must:

- Create a network representation of the citations
- Calculate network statistics, such as page rank, to try to approximate "precedent"
- Verify there is a relationship between this precedent and case outcome

Below is an interactive representation of the citation network of Supreme Court cases. You can zoom in and out  by scrolling in this window, and see which cases cite an influential case by hovering over that case. The cases are color-coded by the area of law:


|**Blue** | First Amendment | **Green** | Criminal Procedure | **Red** | Civil Rights |
|---|---|---|---|---|---|
|**Purple** | Economic Activity  | **Green** | Criminal Procedure | **Red** | Civil Rights|


<div id="sigma-example-parent" class="sigma-parent">
	<div class="sigma-expand" id="sigma-example"></div>
</div>