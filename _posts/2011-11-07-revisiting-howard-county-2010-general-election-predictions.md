---
comments: false
date: 2011-11-07 23:56:58+00:00
layout: post
slug: revisiting-howard-county-2010-general-election-predictions
title: Revisiting Howard County 2010 general election predictions
tags:
- howardcounty
- politics
---

Back in October 2010 pollsters were dueling over their predictions in the Howard County race for county executive, with pollster Patrick Gonzales of Gonzales Research seeing the [race between Ken Ulman and Trent Kittleman tightening](http://marylandreporter.com/2010/10/06/poll-shows-howard-county-executive-race-tightening/) to only a 49-41% advantage for Ulman, a conclusion pooh-poohed by Ulman's campaign staff. One major bone of contention was choosing a pool of likely voters in doing the polls, and in particular determining how many Democrats should be in the pool vs. Republicans and independents.

Gonzales used a likely voter pool of 46% Democrats, 40% Republicans, and 14% independents (i.e., unaffiliated voters and members of other parties). Gonzales commented at the time that this division was being generous to the Democrats and predicted that the percentage of Republicans in the voting population would actually exceed 40%.

For a separate Ulman-commissioned [poll showing Ulman with a 25-point lead](http://archives.explorehoward.com/news/75685/ulman-kittleman-camps-see-bright-spots-polls/) (57-32%) pollster Fred Yang used a likely voter pool of 50% Democrats, 33% Republicans, and 17% independents. (Yang also did an alternative 46/40/14 pooling that showed Ulman with a 53-36% lead.)

I got interested in the question of the likely party breakdown of the 2010 electorate and did a series of posts on this, starting with a two-part series ([part 1](/2010/10/15/howard-county-likely-voters-in-the-2010-general-election/) and [part 2](/2010/10/21/howard-county-likely-voters-in-the-2010-general-election-contd/)) with an initial estimate of the percentages of likely voters and following up after the election (but before I had final turnout data) with a four-part series ([part 1](/2010/11/07/exploring-howard-county-election-data-with-r-part-1/), [part 2](/2010/11/13/exploring-howard-county-election-data-with-r-part-2/), [part 3](/2010/11/16/exploring-howard-county-election-data-with-r-part-3/), and [part 4](/2010/11/16/exploring-howard-county-election-data-with-r-part-3/)) that described in detail how I used the R statistical software to generate my estimates.

I recently got reminded of this topic and recalled that I never went back and compared my estimates to those calculated from the [official turnout figures](http://www.elections.state.md.us/elections/2010/turnout/general/2010_General_Statewide.html). That prompted me to update my [Google spreadsheet of Howard County general election turnout data](https://docs.google.com/a/hecker.org/spreadsheet/ccc?key=0AsbOfsoPgoYPdDdvVEZ4YldZclNMQTVwRmJhcjM0Snc&hl=en#gid=0), which computes the values I needed.

So who was right? The table below shows the three estimates of the predicted party breakdown of voters in the 2010 general election, along with the actual party breakdown.

<table border="0" >
<tbody >
<tr >

<td >
</td>

<td >% Democratic
</td>

<td >% Republican
</td>

<td >% Independent
</td>
</tr>
</tbody>
<tbody >
<tr >

<td >Gonzales
</td>

<td >46
</td>

<td >40
</td>

<td >14
</td>
</tr>
<tr >

<td >Hecker
</td>

<td >46.7
</td>

<td >37.0
</td>

<td >16.3
</td>
</tr>
<tr >

<td >Yang
</td>

<td >50
</td>

<td >33
</td>

<td >17
</td>
</tr>
<tr >

<td >Actual
</td>

<td >50.4
</td>

<td >34.0
</td>

<td >15.6
</td>
</tr>
</tbody></table>

From this we can conclude three things: First, the Gonzales poll was using a likely voter breakdown that was significantly off. However well Republicans did nationally in terms of voter turnout, that success did not translate into comparable turnout in Howard County. 

Second, I came the closest of the three in estimating the percentage of independent voters in the general election. Recall from my posts that the percentage of independents voting in Howard County elections has been steadily going up over the years in an almost linear trend, so doing a simple linear regression produced a reasonably good estimate.

Finally, Fred Yang nailed the respective percentages of Democrats and Republicans in the electorate. His estimate of a 25-point lead for Ken Ulman was also right on the money; [Ulman's actual margin of victory](http://www.msa.md.gov/msa/mdmanual/36loc/how/elect/general/how2010.html) was 26 points (63-37%). If Ken Ulman does run for governor then he could do worse than retaining Yang to do his polling again.

