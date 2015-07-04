---
comments: false
date: 2010-10-15 02:55:05+00:00
layout: post
slug: howard-county-likely-voters-in-the-2010-general-election
title: Howard County likely voters in the 2010 general election
tags:
- howardcounty
---

Previously I discussed the recent [Gonzales poll on the Howard County executive race](http://www.marylandreporter.com/HoCo-exec-race-tightens-Ulman-v.-Kittleman.aspx), focusing on the poll's margin of error ([part 1](http://blog.hecker.org/2010/10/08/margins-of-error-in-howard-county-polling-part-1/) and [part 2](http://blog.hecker.org/2010/10/09/margins-of-error-in-howard-county-polling-part-2/)). As I noted in a comment, the margin of error was not really a controversial topic; other than having fun computing margins of error, the major reason I wrote the post was to note that the breakdowns by county council district had very high (and unreported) margins of error, and therefore probably didn't have much more than entertainment value.

The more controversial aspect of the Gonzales poll was the assumed breakdown of likely voters by party:


<blockquote>Democrats were skeptical of the results, particularly because they are based on the premise of a turnout of 46% of Democrats--about 3 points lower than recent elections – and 40% for Republicans--at least 2 points or more higher than [the] usual GOP showing.</blockquote>



A separate [poll conducted for Ken Ulman](http://www.explorehoward.com/news/75685/ulman-kittleman-camps-see-bright-spots-polls/) by Garin-Hart-Yang Research Group (which had Ulman leading Trent Kittleman 57% to 32%) used a much different assumption on relative shares of the electorate, though it also tested the Gonzales assumption:


<blockquote>The Yang poll sampled 50 percent registered Democrats, 33 percent registered Republicans and 17 percent unaffiliated voters. ...

Yang also presented his poll results using a sample of 46 percent Democrats, 40 percent Republicans and 14 percent independents. In that grouping of the Yang poll, Ulman received 53 percent of the vote compare[d] to Kittleman’s 36 percent (11 percent still went to the undecided voters).</blockquote>



How likely are these assumptions? Beyond gut feel estimates about the relative proportions of Democrats, Republicans, and unaffiliated and other voters who will turn out in November, there are at least two general approaches to estimating the composition of the likely voter population. The first is to look at the relationship between local trends and national trends, and project what will happen in Howard County based on national data. The second is to look at local trends only, and that's the approach I take in this post. (I don't have either the data or the time to look at national trends, so I'll leave that to anyone else who might want to try their hand at it.)

The table below shows the relative proportion by party of voters in past general elections in Howard County, based on voter turnout figures maintained by the Maryland State Board of Elections1. For example, the Democratic figure of 52.64% in 1988 indicates that in that year 52.64% of all people voting in the general election were registered Democrats. Note that this is _not_ the same as the Democratic turnout, i.e., the percentage of registered Democrats who voted; for 1988 that figure was 83.81%.

<table border="0" >
<tbody >
<tr >

<td >Year
</td>

<td >% of Voters (D)
</td>

<td >% of Voters (R)
</td>

<td >% of Voters (Other)
</td>
</tr>
</tbody>
<tbody >
<tr >

<td >1988
</td>

<td >52.64
</td>

<td >35.27
</td>

<td >12.10
</td>
</tr>
<tr >

<td >1990
</td>

<td >55.05
</td>

<td >35.56
</td>

<td >9.39
</td>
</tr>
<tr >

<td >1992
</td>

<td >50.16
</td>

<td >35.86
</td>

<td >13.98
</td>
</tr>
<tr >

<td >1994
</td>

<td >51.52
</td>

<td >37.53
</td>

<td >10.95
</td>
</tr>
<tr >

<td >1996
</td>

<td >49.60
</td>

<td >37.09
</td>

<td >13.31
</td>
</tr>
<tr >

<td >1998
</td>

<td >50.44
</td>

<td >37.49
</td>

<td >12.07
</td>
</tr>
<tr >

<td >2000
</td>

<td >48.58
</td>

<td >36.54
</td>

<td >14.88
</td>
</tr>
<tr >

<td >2002
</td>

<td >48.34
</td>

<td >38.38
</td>

<td >13.28
</td>
</tr>
<tr >

<td >2004
</td>

<td >47.75
</td>

<td >35.37
</td>

<td >16.87
</td>
</tr>
<tr >

<td >2006
</td>

<td >49.48
</td>

<td >35.26
</td>

<td >15.27
</td>
</tr>
<tr >

<td >2008
</td>

<td >50.08
</td>

<td >31.73
</td>

<td >18.19
</td>
</tr>
</tbody></table>

One way to estimate voter share in 2010 is simply to look at the historical results and guesstimate. The following chart presents voter share by party in all of the general elections from 1988 through 2008 (from the above table), along with some added trend lines.

[![](http://hecker.files.wordpress.com/2010/10/hoco-general-all-electorate1.png)](http://hecker.files.wordpress.com/2010/10/hoco-general-all-electorate1.png)

From the chart it appears that both the Democratic and Republican shares of those voting in Howard County general elections have been slowly declining (with Democratic share declining somewhat faster), and that the proportion of unaffiliated voters and others has been rising. Looking at this chart I'd estimate that the proportion of Democratic voters in the 2010 election would be somewhere around 47-48%, Republican share would be around 35-36%, and unaffiliated and other voters around 17-18%.

We can make a more formal estimate by doing a [linear regression](http://www.stat.yale.edu/Courses/1997-98/101/linreg.htm) analysis, finding the lines that best fit the historical data and then projecting forward to 2010. (Linear regression is the mathematical technique that enables us to create trend lines like those in the above chart.) If we look at the data for all general elections, the estimated voter shares for 2010 are 47.5% Democratic, 35.0% Republican, and 17.3% unaffiliated and other2.

However these estimates have the obvious drawback that presidential election years (like 2008) show a different pattern of voter shares than gubernatorial election years (like 2006). (For example, the relative proportion of unaffiliated and other voters is consistently higher in presidential election years.) Therefore it may make sense to look only at the data for gubernatorial elections. If we do a linear regression on that data then the estimated voter shares for 2010 are 46.7% Democratic, 36.9% Republican, and 16.3% unaffiliated and other3.

The most interesting point from the regression analysis is that the proportion of unaffiliated and other voters in gubernatorial elections is an almost perfectly linear upward trend over time. (This is almost as true for the proportion of unaffiliated and other voters in presidential elections over time.) For whatever reason there appears to be a strong and consistent trend for unaffiliated voters to constitute a larger and larger proportion of voters in general elections.

Thus I feel reasonably confident in projecting that unaffiliated and other voters will constitute somewhere between 16 and 17% of all voters this November. Note that this estimate is consistent with the Yang poll (which had unaffiliated voters at 17% of the sample), but inconsistent with the Gonzales poll (for which unaffiliated voters were 14% of the sample).

On the other hand, the proportion of Republican voters in gubernatorial elections over time is not well-explained at all as a linear trend. Instead at first glance the proportion of Republicans appears to be bouncing around randomly in the general range of 35 to 39%. Given that, I find it somewhat implausible that the Republican share of voters this November would be as high as 40%, as assumed in the Gonzales poll. I'm more confident with a projection of 37%, which is a bit higher than the average of 36.8% in gubernatorial elections and a bit lower than the 37.53% Republican share of all voters in the 1994 election. Note that my projection of 37% is considerably higher than the 33% Republican share assumed in the Yang poll.

If I'm projecting a Republican share of 37% and an unaffiliated and other share of between 16 and 17%, that implies a projection of between 46 and 47% for the Democratic share of voters this November. This is a tad higher than the Gonzales assumption of 46% and significantly lower than the Yang assumption of 50%.

How might these proportions translate into actual votes for Ken Ulman vs. Trent Kittleman? I really don't know how best to estimate that, and am not comfortable making a projection. However I will note that per my earlier [post on Howard County independent voters](http://blog.hecker.org/2010/10/03/how-independent-are-howard-county-independents/), the projected 17% unaffiliated and other voters are almost certainly not all up for grabs. Instead many if not most of them are simply weak partisans who don't want to formally affiliate with their party of preference. It's therefore quite possible that unaffiliated voters will vote for Ulman and Kittleman in roughly the same proportions as one might expect from the Democratic and Republican shares of those voting on November 2.

UPDATE: For more on this general topic please see [my follow-up post](http://blog.hecker.org/2010/10/21/howard-county-likely-voters-in-the-2010-general-election-contd/).



* * *



1. For the detailed figures see the [general election turnout spreadsheet ](http://spreadsheets.google.com/ccc?key=0AsbOfsoPgoYPdDdvVEZ4YldZclNMQTVwRmJhcjM0Snc&hl=en)I prepared. I used figures from the [Maryland State Board of Elections](http://www.elections.state.md.us/) for [1988](http://www.elections.state.md.us/elections/1988/turnout_1988/general_statewide.html), [1990](http://www.elections.state.md.us/elections/1990/turnout_1990/general_statewide.html), 1992 (for [all voters](http://www.elections.state.md.us/elections/1992/turnout/general_statewide.html), the [Democratic](http://www.elections.state.md.us/elections/1992/turnout/general_democratic.html), [Republican](http://www.elections.state.md.us/elections/1992/turnout/general_republican.html), [Libertarian](http://www.elections.state.md.us/elections/1992/turnout/general_libertarian.html), and [Alliance](http://www.elections.state.md.us/elections/1992/turnout/general_alliance.html) parties, and [unaffiliated voters](http://www.elections.state.md.us/elections/1992/turnout/general_decline.html)), [1994](http://www.elections.state.md.us/elections/1994/turnout_1994/general_statewide.html), 1996 (for [all voters](http://www.elections.state.md.us/elections/1996/turnout/general_statewide.html), the [Democratic](http://www.elections.state.md.us/elections/1996/turnout/general_democratic.html), [Republican](http://www.elections.state.md.us/elections/1996/turnout/general_republican.html), [Libertarian](http://www.elections.state.md.us/elections/1996/turnout/general_libertarian.html), [Reform](http://www.elections.state.md.us/elections/1996/turnout/general_reformparty.html), [Natural-Law](http://www.elections.state.md.us/elections/1996/turnout/general_naturallaw.html), and [Taxpayers](http://www.elections.state.md.us/elections/1996/turnout/general_taxpayer.html) parties, and [unaffiliated voters](http://www.elections.state.md.us/elections/1996/turnout/general_decline.html)), [1998](http://www.elections.state.md.us/elections/1998/turnout_1998/general_statewide.html), 2000 (for [all voters](http://www.elections.state.md.us/elections/2000/turnout/general_statewide.html), the [Democratic](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_democratic.html), [Republican](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_republican.html), [Libertarian](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_libertarian.html), [Reform](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_reform.html), [Green](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_green.html), and [Constitution](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_constitution.html) parties and [unaffliated voters](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_decline.html)), [2002](http://www.elections.state.md.us/elections/2002/turnout/g_statewide.html), 2004 (for [all voters](http://www.elections.state.md.us/elections/2004/general/turnout/turnout1.html) and [broken down by party](http://www.elections.state.md.us/elections/2004/general/turnout/turnout2.html)), [2006](http://www.elections.state.md.us/elections/2006/turnout/general/county_wide.html), and [2008](http://www.elections.state.md.us/elections/2008/turnout/general/2008_Presidential_General_Statewide.html).↩

2. I did the linear regression analysis in the [R environment](http://www.r-project.org/) using the lm() function. Using all data the best fit line for the Democratic voter share data had slope -0.2259 and intercept 501.6065 (with R-squared of 0.5094), the best fit line for the Republican data had slope -0.08736 and intercept 210.55982 (with R-squared of 0.1062), and for the unaffiliated and other data had slope  0.3130 and intercept -611.8021 (with R-squared of 0.6552).↩

3. Using only the data for gubernatorial general election years, the best fit line for the Democratic voter share data had slope -0.358 and intercept 766.250 (with R-squared of 0.7777), the best fit line for the Republican data had slope -0.00625 and intercept 24.35650 (with R-squared of 0.000844), and for the unaffiliated and other data had slope 0.3522 and intercept -691.6035 (with R-squared of 0.9894).↩

