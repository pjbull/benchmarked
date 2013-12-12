---
title: Making Predictions
nav: three
subnav: three
layout: default
---

## Using the Citations of Supreme Court Cases in the Briefs Submitted by Each Side

<div id="sigma-example-parent" class="sigma-parent">
	<div class="sigma-expand" id="sigma-example"></div>
</div>
<div id="legend">
	<table class="legtable">
		<tr>
			<td>
				<div class="swatch" style="background-color: rgb(0, 158, 50)"> </div>
				Criminal Procedure
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(177, 0, 17)"> </div>
				Civil Rights
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(0, 0, 245)"> </div>
				First Amendment
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(177, 0, 136)"> </div>
				Economic Activity
			</td>
		</tr>
		<tr>
			<td>
				<div class="swatch" style="background-color: rgb(25, 164, 132)"> </div>
				Judicial Power
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(47, 25, 164)"> </div>
				Due Process
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(164, 89, 25)"> </div>
				Unions
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(25, 132, 164)"> </div>
				Federalism
			</td>
		</tr>
		<tr>
			<td>
				<div class="swatch" style="background-color: rgb(25, 68, 164)"> </div>
				Privacy
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(47, 164, 25)"> </div>
				Attorneys
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(111, 164, 25)"> </div>
				Miscellaneous
			</td>
			<td>
				<div class="swatch" style="background-color: rgb(164, 25, 153)"> </div>
				Federal Taxation
			</td>
		</tr>
	</table>
</div>

This is an interactive representation of the citation network of Supreme Court cases. You can zoom in and out  by scrolling in this window, and see which cases cite an influential case by hovering over that case. The cases are color-coded by the area of law, and the size of the nodes is based on how many other cases cite that node.

One of the pillars of the legal system in the United States is precedent--that is, if the court has already decided an issue, it will apply the same reasoning if that issue or an analogous one arises again. Written documents that are part of legal proceedings, such as opinions and briefs, cite explicitly any previous cases that support their argument or touch on the issues at hand. We wonder if understanding how often and when a case is cited could in turn be used to predict the outcome of future cases. To do this, we create a network of citations for the opinions of the Supreme Court. The opinion is written by the court when it makes a decision and cites that cases that raised issues it felt were worth addressing or had some precedential value. Briefs are submitted by both parties (petitioner and respondent) as part of their arguments to the court. These briefs also cite heavily previous court cases that they believe affect the issue at hand.

We wonder if we can model legal precedent using network statistics and thus be able to predict a new case based on the precedent of the cases cited by the briefs from both sides.

To do so we must:

- Create a network representation of the citations
- Calculate network statistics, such as page rank, to try to approximate "precedent"
- Quantifty the citations that are in each side's briefs
- Verify there is a relationship between this precedent and case outcome

Since we're curious if the cases cited by briefs are a proxy for the relative strength of an argument, we want to gather statistics on our network that measure the relative importance each individual case. To do this, we compute a number of node-based statistics using the [NetworkX package](http://networkx.github.io/) for Python. All of these statistics attempt to capture slightly different features of the node structure, but as a whole represent the relative "importance" of a node We will then see if any of these measures correlate with the outcome of a case.

Upon analyzing the correlation between citing cases and case outcome, we see a very small negative correlation between the measures of importance and case outcome. If, as we hypothesized, citing more important cases would strengthen an argument and make one side more likely to win, than the difference between the petitioner's and respondent's citations should be positively correlated with the outcome. That is, as the petitioner has a stronger argument, they should be more likely to win.

It seems like our hypothesis that we could predict outcome using the citation graph was false. There are a number of possible reasons for this outcome. It is likely the situation that for any issues that are central to a case, both sides will cite the relevant precedential cases, one in a positive light, the other in a negative light. That means that the difference between their citations will only be on smaller less important cases that are less central to the argument.

