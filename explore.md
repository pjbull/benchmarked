---
title: Seeing the Data
nav: two
subnav: one
layout: default
---
The first step in attempting to identify bias in the Supreme Court is to describe what we actually mean by 'bias'. In the context of the Supreme Court, bias is meant as a preferential treatment in how a particular case is handled by the Court. When exploring how a case is chosen to be reviewed  and ultimately decided upon by the Court, the major forms of possible bias are a selection bias and judicial impartiality. 


#Exploring Selection Bias
Where do the Supreme Court cases come from? The legal system of the United States is structured in a hierarchal fashion of District Courts: Appeals Courts: The Supreme Court.  District Courts issue decisions on a state/local level. These decisions can be further reviewed by one of thirteen regional Federal Appeals Courts. If warranted, the final decision is rendered by the Supreme Court which is why the Court is also known as the 'Court of Last Resort'.  Because there are numerous pathways that lead to the Supreme Court, we simplify the analysis to the origin, where the case first starts, and source, the judicial body that last reviews a case before being taken up by the Supreme Court.

Do cases originate primarily in certain geographical regions or states?

![alt text]({{site.baseurl}}img/State_Origins.png "State Origins")

California and New York stand out for their normalized percentage of the cases that reach the Supreme Court. This origin bias likely due to the concurrence of  high state population and political sensibilities that are amendable to legal advocacy.

Are certain courts more likely to be the source of Supreme Court cases?

![alt text]({{site.baseurl}}img/Sources.png "Case Source")

From the proceeding graph, it can be seen that the most likely source for a Supreme Court case is from a State-level Supreme Court. It should not be surprising that a case important enough to make it to a State's Supreme Court would likely be significant enough to warrant a review by the Supreme Court. Additionally, note that remaining courts are all Federal Appeals courts. This also reinforces the notion of a chain of command within the judicial system. Finally, the most likely appeals court is the Ninth Circuit which covers the western states including California, which correlates well to the previous state origins map. 

#Exploring Judicial Impartiality
Supreme Court Justices are appointed to the court for life. Ostensibly, immunity from re-election concerns should ensure impartiality in judicial proceeding. Additionally, the Justices are suppose to be apolitical with cases reviewal based solely on Constitutional legality. However, the Justices are still appointed by a political entity, namely the President of the United States. It is logical to assume that the President appoints Justices who align with their political philosophies. But do the outcomes of Supreme Court decisions truly reflect a political bias of the Justices? More precisely, do certain Justices tend to vote conservative or liberal on a particular legal issue. Please check out the [Supreme Course Database](http://scdb.wustl.edu/documentation.php?var=decisionDirection) website for descriptions of what liberal and conservative mean in context to the legal system. In general, these legal versions of liberal/conservative align well with what we consider political ideologies.

<table class="jswap">
	<tr>
		<!-- DEMS -->
		<td class="jleft">
			<div id="dembar"></div>
			</br>
			<img class="justice" id="ginsburg" src="{{site.baseurl}}img/headshot/rg.jpg"/>
			</br>
			<img class="justice" id="breyer" src="{{site.baseurl}}img/headshot/sb.jpg"/>
			</br>
			<img class="justice" id="sotomayor" src="{{site.baseurl}}img/headshot/ss.jpg"/>
			</br>
			<img class="justice" id="kagan" src="{{site.baseurl}}img/headshot/ek.jpg"/>
		</td>

		<td>
			<img id="jprof" src="{{site.baseurl}}img/prof/justice.jpg"/>
		</td>
		
		<!-- REPS -->
		<td class="jright">
			<div id="repbar"></div>
			</br>
			<img class="justice" id="roberts" src="{{site.baseurl}}img/headshot/jr.jpg"/>
			</br>
			<img class="justice" id="scalia" src="{{site.baseurl}}img/headshot/as.jpg"/>
			</br>
			<img class="justice" id="kennedy" src="{{site.baseurl}}img/headshot/ak.jpg"/>
			</br>
			<img class="justice" id="thomas" src="{{site.baseurl}}img/headshot/ct.jpg"/>
			</br>
			<img class="justice" id="alito" src="{{site.baseurl}}img/headshot/sa.jpg"/>
		</td>
	</tr>
</table>

Viewing the profiles above, one can see that each Justice has a unique voting pattern. However, interestingly, most profiles have ideological voting percentages within the range of 40-60%, regardless of law issue. Because Justices tend not to vote heavily towards one ideological direction, this result suggests that Justices do not vote on idealogical basis but rather consider each case on its own Constitutional legality.


