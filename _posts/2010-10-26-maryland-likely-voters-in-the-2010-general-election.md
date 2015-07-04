---
comments: false
date: 2010-10-26 03:32:24+00:00
layout: post
slug: maryland-likely-voters-in-the-2010-general-election
title: Maryland likely voters in the 2010 general election
tags:
- howardcounty
---

[HoCo Rising recently highlighted](http://hocorising.blogspot.com/2010/10/our-birds-heads-are-falling-off.html) a [Baltimore Sun poll](http://www.baltimoresun.com/news/bs-md-governor-polla-20101023,0,4775019,full.story) showing Martin O'Malley 14 points ahead of Robert Ehrlich in the Maryland gubernatorial race (52% vs. 38%), and (among other things) pointed to a [post at Red Maryland](http://redmaryland.blogspot.com/2010/10/bullt.html) questioning the assumptions of the poll:


<blockquote>
... what were the demographics of the poll? ... The story says that turnout patterns were averaged over the last four Maryland general elections. Well, which general elections? The last four in total (2002, 2004, 2006, 2008) or the last four statewide off-year elections? (1994, 1998, 2002, 2006)? ... And what defines a higher-than-average Republican turnout this year? What were the determining factors in determining that estimated higher Republican turnout, and did the pollster take into account the lower Democratic and higher Republican primary turnouts last month?</blockquote>



I recently addressed similar questions in the context of a local Howard County poll, and tried to estimate the party breakdown of [likely voters in Howard County](http://blog.hecker.org/2010/10/15/howard-county-likely-voters-in-the-2010-general-election/) in the upcoming general election. Since I now have a (not very sophisticated) methodology to estimate the likely share of turnout from Democrats, Republicans, and others, I couldn't resist trying it in the context of a statewide poll.

But first a brief review of the Baltimore Sun poll: The poll was of 798 voters with a stated margin of error of 3.5 points. (Those of you who read my [prior](http://blog.hecker.org/2010/10/08/margins-of-error-in-howard-county-polling-part-1/) [posts](http://blog.hecker.org/2010/10/09/margins-of-error-in-howard-county-polling-part-2/) on calculating margins of error will recall that this is the margin of error for a candidate polling at or near 50%, like O'Malley; the margin of error on Ehrlich's result is very slightly lower.) So assuming that this poll accurately reflects likely voters (which is a point of contention, of course), chances are 95% that Ehrlich's true level of support is between 34.5 and 41.5%, and that O'Malley's support is between 48.5% and 55.5%. There would be only a 2.5% chance that Ehrlich's support is higher than 41.5%, or that O'Malley's is lower than 48.5%.

Now to address Red Maryland's questions: One major point of contention is the assumption in the Baltimore Sun poll that Republicans will be only 30% of the voting population. This contrasts with a recent [Gonzales poll](http://www.marylandreporter.com/omalley-leads-ehrlich-in-poll.aspx) which had O'Malley up by 5 points. As explained in a [supplementary document](http://www.marylandreporter.com/systems/file_download.aspx?pg=1042&ver=4) (and, incidentally, full props to Gonzales for providing this) the Gonzales poll methodology assumed a voting population composed of 55% Democrats, 33% Republicans, and 12% independents, based on extrapolation from past turnout in the 2006 general election and 2010 primaries.1

How does my method compare to the assumption in these two polls. The simplest approach, and the one I'll adopt in this post, is to extrapolate turnout from that in past general elections. (Incorporating turnout data from primaries is more complicated, and I haven't yet had time to put together a full data set. Based on my analysis of the Howard County data I'm also not yet convinced that primary turnout is that good a predictor of general election turnout.)

With that in mind I used various Maryland State Board of Elections reports2 to put together turnout statistics for general elections in Maryland from 1988 through 2008. (For those of you who want to try your own hand at this, the data is available as a [Google spreadsheet](https://spreadsheets.google.com/ccc?key=0AoeAIApSILw_dFM4azc1MVFMWTh2NU1EVUhTaWxJVlE&hl=en), an [Excel file](http://hecker.org/public/maryland-general-election-turnout.xls), or a [text file](http://hecker.org/public/maryland-general-election-turnout.txt) suitable for loading into the [R statistical package](http://www.r-project.org/)).

The table below shows the relative proportion by party of voters in past general elections in Maryland. For example, the Democratic figure of 63.45% in 1988 indicates that in that year 63.45% of all people voting in the general election were registered Democrats. Note that this is _not_ the same as the Democratic turnout, i.e., the percentage of registered Democrats who voted; for 1988 that figure was 74.77%.

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

<td >63.45
</td>

<td >28.78
</td>

<td >7.82
</td>
</tr>
<tr >

<td >1990
</td>

<td >64.80
</td>

<td >29.10
</td>

<td >6.10
</td>
</tr>
<tr >

<td >1992
</td>

<td >61.40
</td>

<td >29.59
</td>

<td >9.01
</td>
</tr>
<tr >

<td >1994
</td>

<td >61.21
</td>

<td >31.40
</td>

<td >7.39
</td>
</tr>
<tr >

<td >1996
</td>

<td >58.88
</td>

<td >31.49
</td>

<td >9.62
</td>
</tr>
<tr >

<td >1998
</td>

<td >60.06
</td>

<td >31.27
</td>

<td >8.66
</td>
</tr>
<tr >

<td >2000
</td>

<td >58.18
</td>

<td >30.67
</td>

<td >11.15
</td>
</tr>
<tr >

<td >2002
</td>

<td >57.06
</td>

<td >32.72
</td>

<td >10.22
</td>
</tr>
<tr >

<td >2004
</td>

<td >55.96
</td>

<td >30.62
</td>

<td >13.41
</td>
</tr>
<tr >

<td >2006
</td>

<td >56.81
</td>

<td >31.55
</td>

<td >11.64
</td>
</tr>
<tr >

<td >2008
</td>

<td >58.20
</td>

<td >27.53
</td>

<td >14.27
</td>
</tr>
</tbody></table>

Note that (as mentioned in the Red Maryland quote above) elections in presidential election years show a different pattern that turnout in gubernatorial election years; this is most apparent in the figures for independents, who consistently make up a larger portion of the electorate in presidential years. Therefore I think we should ignore the presidential election figures and focus on the figures for the past five gubernatorial general elections (1990, 1994, 1998, 2002, and 2006).

In looking at those years, the thing that stands out the most is that the percentage of all voters who are independent (i.e., unaffiliated or belonging to smaller parties) shows an almost perfectly linear trend3 over time. I've [previously hypothesized](http://blog.hecker.org/2010/10/21/howard-county-likely-voters-in-the-2010-general-election-contd/) that this is due to the number of registered unaffiliated voters growing linearly over time, to [unaffiliated voters actually being leaners](http://blog.hecker.org/2010/10/03/how-independent-are-howard-county-independents/) to one party or another, and to turnout differences between unaffliated Democratic and Republican leaners balancing each other out to produce a consistently growing turnout for unaffiliated voters overall.

In any case, I think we could do a lot worse than just doing a simple linear regression on the percentage of independent voters making up the electorate in the five previous gubernatorial general elections. Such a regression produces an estimate of 13%4 for the number of unaffiliated and other voters voting in the 2010 general elections.

That estimate then leaves 87% of the voting population to apportion between Democrats and Republicans. Doing a linear regression on the shares of Democrats voting in the last five gubernatorial general elections (which also shows a pretty good linear trend, this time in the downward direction) gives an estimate of 54% Democrats5 for the 2010 general election, with Republicans then composing the remaining 33% of the electorate.

Note that these estimates are pretty close to the Gonzales estimates: I'm estimating independent turnout one point higher (13% vs. 12%), Democratic turnout one point lower (54% vs. 55%), and Republican turnout the same (at 33%). Also, the 33% I'm estimating for Republicans is 3 points higher than the 30% assumption used in the Baltimore Sun poll.

So the bottom line is that I think the Baltimore Sun poll was indeed somewhat biased against Ehrlich in its assumptions. However whether Ehrlich is really within shouting distance of O'Malley is an open question. One interesting fact is that the Baltimore poll showed a majority of independents going for O'Malley and only 37% for Ehrlich. Polling within the group of unaffiliated and other voters would presumably not be affected by the assumptions in the Sun poll made re Republican vs. Democratic turnout, and that breakdown is consistent with my hypothesis that the preferences of independent voters to a large extent mirror the overall breakdown between voters affiliated with the two major parties.

We'll have to wait and see how the election really turns out, and whose estimates on turnout end up being most accurate. In the meantime please feel free to play around with the turnout data using your own techniques.

UPDATE: I had meant to mention, but neglected to, that the Baltimore Sun recently published a [Second Opinion post](http://weblogs.baltimoresun.com/news/opinion/2010/10/omalley_by_14_really.html) discussing the demographic assumptions in the Sun poll and the Gonzales poll.
 


* * *



1. It's worth noting though that even the Gonzales supplement doesn't provide a full explanation of the model underlying the turnout estimates. For example, how exactly did Gonzales calculate that Democratic turnout would go down 7% in 2010, as opposed to 6% or 8% or some other number?↩

2. For the general election turnout I used reports from the [Maryland State Board of Elections](http://www.elections.state.md.us/) for [1988](http://www.elections.state.md.us/elections/1988/turnout_1988/general_statewide.html), [1990](http://www.elections.state.md.us/elections/1990/turnout_1990/general_statewide.html), 1992 (for [all voters](http://www.elections.state.md.us/elections/1992/turnout/general_statewide.html), the [Democratic](http://www.elections.state.md.us/elections/1992/turnout/general_democratic.html), [Republican](http://www.elections.state.md.us/elections/1992/turnout/general_republican.html), [Libertarian](http://www.elections.state.md.us/elections/1992/turnout/general_libertarian.html), and [Alliance](http://www.elections.state.md.us/elections/1992/turnout/general_alliance.html) parties, and [unaffiliated voters](http://www.elections.state.md.us/elections/1992/turnout/general_decline.html)), [1994](http://www.elections.state.md.us/elections/1994/turnout_1994/general_statewide.html), 1996 (for [all voters](http://www.elections.state.md.us/elections/1996/turnout/general_statewide.html), the [Democratic](http://www.elections.state.md.us/elections/1996/turnout/general_democratic.html), [Republican](http://www.elections.state.md.us/elections/1996/turnout/general_republican.html), [Libertarian](http://www.elections.state.md.us/elections/1996/turnout/general_libertarian.html), [Reform](http://www.elections.state.md.us/elections/1996/turnout/general_reformparty.html), [Natural-Law](http://www.elections.state.md.us/elections/1996/turnout/general_naturallaw.html), and [Taxpayers](http://www.elections.state.md.us/elections/1996/turnout/general_taxpayer.html) parties, and [unaffiliated voters](http://www.elections.state.md.us/elections/1996/turnout/general_decline.html)), [1998](http://www.elections.state.md.us/elections/1998/turnout_1998/general_statewide.html), 2000 (for [all voters](http://www.elections.state.md.us/elections/2000/turnout/general_statewide.html), the [Democratic](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_democratic.html), [Republican](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_republican.html), [Libertarian](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_libertarian.html), [Reform](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_reform.html), [Green](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_green.html), and [Constitution](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_constitution.html) parties and [unaffliated voters](http://www.elections.state.md.us/elections/2000/turnout/general_statewide_decline.html)), [2002](http://www.elections.state.md.us/elections/2002/turnout/g_statewide.html), 2004 (for [all voters](http://www.elections.state.md.us/elections/2004/general/turnout/turnout1.html) and [broken down by party](http://www.elections.state.md.us/elections/2004/general/turnout/turnout2.html)), [2006](http://www.elections.state.md.us/elections/2006/turnout/general/county_wide.html), and [2008](http://www.elections.state.md.us/elections/2008/turnout/general/2008_Presidential_General_Statewide.html).

Note that the 1994 turnout report on the Maryland State Board of Elections website contains a major error: the Allegany County figures for Republican registered voters and Republican turnout were omitted from the statewide totals for registered voters and turnout. I have added these figures (17,375 and 11,715 respectively) back into the statewide total in my own spreadsheet.

There are also smaller discrepancies for turnout in 1988, for registered voters and turnout in 1996, and registered voters in 2004; see columns U and V of the spreadsheet. I'll investigate and fix these as I have time.↩

3.More specifically, using the R-compatible text file for general election turnout linked to above, and using only the lines corresponding to gubernatorial elections, I constructed a linear model `lm(PctVotersOther ~ Year)`. This model has a slope of 0.34475, intercept of -686.00250, and R-squared of 0.9984 (1.0 indicating a perfect linear trend).↩

4. The estimate can be computed as 0.34775*2010 - 686.00250, or if you want to get fancy you can do `predict(lmo, newdata=data.frame(Year=2010))` where `lmo` is the linear model described above. In either case the estimate is 12.975.↩

5. The linear model `lm(PctVotersD ~ Year)` has a slope of -0.50325, intercept of 1065.48150, and R-squared of 0.9353. The estimate for 2010 is then -0.50325*2010 + 1065.48150 or 53.949.↩
