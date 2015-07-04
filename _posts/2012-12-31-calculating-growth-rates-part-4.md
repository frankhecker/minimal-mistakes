---
comments: false
date: 2012-12-31 21:03:08+00:00
layout: post
slug: calculating-growth-rates-part-4
title: Calculating growth rates (for Howard County or otherwise), part 4
tags:
- howardcounty
- misc
---

In [part 3](/2012/12/30/calculating-growth-rates-part-3/) of this series I recapped the method derived in [part 2](/2012/12/16/calculating-growth-rates-part-2/) for estimating growth rates (using Howard County’s population in the 21st century as an example) and discussed how to use such estimates to project growth in future years.

Now let's go back to a question I asked at the end of part 2: Can we calculate a more accurate estimate for the growth rate? We can begin exploring this question by going back to my original inaccurate estimate in [part 1](/2012/12/09/calculating-growth-rates-part-1/) and considering where I went wrong. To get that estimate I simply took the final population in 2010, divided it by the initial population in 2000, then divided that by 10 to get an annual growth rate (which I then converted to a percentage value). That initial estimate was too high: When I used that value to estimate the population in 2001, 2002, and so on, it produced a final population estimate for 2010 that was well in excess of the actual 2010 population.

In making my original estimate I saw that the population in 2010 was 15.834% higher than the population in 2000. The additional population didn't get added all at once; some population growth occurred in each of the 10 years. I tried to account for that ongoing growth by dividing 15.384% by 10 and assuming 1.5384% growth per year. But that corresponded to adding 1.5384% of the _2000_ population each year, and that was my mistake. In actuality an annual growth rate as applied to (say) estimating the 2006 population produces a percentage increase relative to the _2005_ population, _not_ the 2000 population.

The 2005 population was larger than the 2000 population because it reflected population growth in the years since 2000. Thus using our initial estimated growth rate of 1.5384% (based on a percentage of the 2000 population) produced too high an estimate of the population growth when we computed population growth year by year (and as part of that process applied that growth rate to the 2005 population). Or, to put it another way, a smaller growth rate than 1.5384% was able to produce 15.384% growth from 2000 to 2010 when applied on a year-by-year basis. In fact, a growth rate of about 1.4807% (vs. 1.5384%) is sufficient to produce 15.384% growth over the 10-year period, as I showed in part 2.

Let’s now turn to a new but (as we’ll see) related question: What if instead of projecting population growth on a year-by-year basis, we wanted to project it on a month-to-month basis? For example,  the 2010 population figure of 287,085 was for April of that year (actually April 1). How could we project the population in May 2010, June 2010, and so on? Could we simply divide our estimated annual growth rate of 1.4807% by 12 to calculate a monthly growth rate?

Based on the discussion above, we should suspect the answer is no. Let’s work out the numbers though just to be sure: We divide 1.4807% by 12 to obtain an initial estimate of 0.12339% growth per month. Using this estimate the population for May 2010 (i.e., on May 1) would be 287,085 times 1.0012339 (converting 0.12339% to non-percentage form and adding 1), or 287,439. Per our discussion in part 3, the population for April 2011 (12 months later) would be 287,085 times 1.0012339 raised to the 12th power, which equals 287,085 times 1.014908, or 291,365.

But wait: according to our estimated annual growth rate of 1.4807% the population for April 2011 (1 year later) should be 287,085 times 1.014807 or 291,336. It’s not a big difference (29 people), but it’s still significant. Again our initial estimated growth rate produced estimated population figures that are too high, and for a similar reason as previously: Our estimated monthly growth rate assumed that for each month we’re adding a given percentage of the population as of April 2010, but in actuality the increase in each month is based on the prior month’s population, which in our example is always higher that that (since we’re making estimates for later in 2010 and 2011).

How can we get a better estimate? We simply go back to our approach in part 2 for computing a growth rate using the actual Census population figures for 2000 and 2010, this time computing everything on a monthly (rather than yearly) basis:1



	
  1. We again start by dividing the population in (April) 2010 by the population in (April) 2000. This gives 287,085 divided by 247,842, or 1.158339.

	
  2. Since there are 120 months between the starting and ending population figures, this time we take the 120th root of the result from step 1 to find the growth factor. The 120th root of 1.158339 is 1.0012256.

	
  3. Again we subtract 1 from the growth factor to find the growth rate, which this time is a monthly growth rate. This gives 1.0012256 minus 1, or 0.0012256.

	
  4. Again we multiply the growth rate by 100 to convert it into percentage form. This gives 100 times 0.0012256, or 0.12256% per month.


So the more correct estimate for a monthly growth rate is 0.12256% instead of 0.12339%.

Can we go further, and estimate weekly growth rates or even daily growth rates? Of course we can: It’s simply a matter of finding the number of time periods (days, weeks, months, or years) between the initial and final populations, and then using that number when we take the root in step 3 of our general method.

The results are shown in the following table, each expressed to 5 significant figures; just for fun I’ve added entries for a growth rate per decade and growth rate per hour. As an example, the daily growth rate is computed by dividing the population on April 1, 2010 (287,085) by the population on April 1, 2000 (247,842), taking the 3650th root of the result to get the daily growth factor (since there are 10 years of 365 days each), subtracting 1 to get the daily growth rate, and then multiplying by 100 to put the daily growth rate in percentage terms.2
<table >

<tr >

<td >Growth Rate Period
</td>

<td >Number of periods
</td>

<td >Estimated Growth Rate
</td>
</tr>

<tbody >
<tr >

<td >Decade
</td>

<td >1
</td>

<td >15.384%
</td>
</tr>
<tr >

<td >Year
</td>

<td >10
</td>

<td >1.4807%
</td>
</tr>
<tr >

<td >Month
</td>

<td >120
</td>

<td >0.12256%
</td>
</tr>
<tr >

<td >Week
</td>

<td >520
</td>

<td >0.028271%
</td>
</tr>
<tr >

<td >Day
</td>

<td >3,650
</td>

<td >0.0040271%
</td>
</tr>
<tr >

<td >Hour
</td>

<td >87,600
</td>

<td >0.00016779%
</td>
</tr>
</tbody>
</table>
The above is all well and good, but the way the growth rates are expressed makes it hard to compare them. What would be nice would be to express all rates as annual rates, just as (for example) we talk of driving 50 miles per hour whether our trip lasts for 2 minutes, 2 hours, or 2 days. However we’ve seen enough thus far to know we have to be careful in how we do this, and since this post is long enough as it is I’ll postpone discussion of this topic until part 5.



* * *



1. I’m implicitly assuming that each month has equal length. This is not true (at 31 days the month of January is more than 10% longer than February in non-leap years), but it doesn’t affect my overall argument.

2. For simplicity I've assumed that each year is exactly 52 weeks (actually a year is about 52.1 weeks), and that there are no leap years (actually there was an extra day in both 2004 and 2008). Correcting these would change the weekly, daily, and hourly growth rates very slightly.
