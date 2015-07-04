---
comments: false
date: 2012-12-09 23:55:03+00:00
layout: post
slug: calculating-growth-rates-part-1
title: Calculating growth rates (for Howard County or otherwise), part 1
tags:
- howardcounty
- misc
---

_[I'm interrupting my series of “weekend reading” posts to bring you an actual blog post.]_

Last week at work one of my tasks was estimating growth rates for a particular quantity (never mind exactly what). I found that doing this was not exactly trivial, as there are multiple ways to calculate growth rates, some of them more mathematically complicated than others. I think I now understand how this all works, and to test my understanding I'm going to try to explain it here.

If you ever have to deal with growth rates in your own life (and remember, they come up a lot in financial matters) this may be useful to you as well. To make things simpler I’ll avoid mathematical notation and restrict myself to operations you can do on a calculator or in a program like Microsoft Excel or Google Spreadsheets.

As a local example of the problem, let’s try to calculate the rate of growth of Howard County’s population from 2000 to 2010. (Perhaps we’re interested in forecasting future population growth, or we’re just curious about the rate of past growth.) Here are the two numbers we’ll start with, the total population of Howard County as counted in the 2000 and 2010 censuses:1

<table >

<tr >
<td >Year
</td>
<td >Population
</td></tr>

<tbody >
<tr >
<td >2000
</td>
<td >247,842
</td></tr>
<tr >
<td >2010
</td>
<td >287,085
</td></tr>
</tbody>
</table>

We’ll start with the simplest calculation possible; feel free to follow along using your own calculator:




  1. Take the difference between the final population in 2010 and the initial population in 2000. This difference is 287,085 minus 247,842, or 39,243.


  2. Divide this difference by the initial population. This gives us 39,243 divided by 247,842, or 0.15834 (rounded off to five significant digits).


  3. Express this value as a percentage of the initial population by multiplying it by 100. This gives us 100 times 0.15834 or 15.834. So the population of Howard County increased 15.834% from 2000 to 2010.


  4. Finally, divide the percentage increase from 2000 to 2010 by 10, to calculate an estimated growth rate per year. This gives us 15.834% divided by 10 or 1.5834%, our first (but not last!) estimated annual growth rate for Howard County’s population during the decade.



So we’re done, right? Not so fast! Let’s check this estimate by calculating estimated populations for Howard County for 2001 through 2009. For example, if the true annual growth rate is 1.5834%, then from 2000 to 2001 Howard County should have added a total number of people equal to 1.5834% of 247,842. We can estimate the population in 2001 as follows:


  1. Convert the growth rate expressed as a percentage into the non-percentage form, by dividing it by 100. This gives us 1.5834 divided by 100 or 0.015834.


  2. Multiply the (non-percentage) growth rate times the initial population in 2000. This gives us 0.015834 times 247,842 or 3,924 (rounding to a whole number) for the estimated number of people added to the population from 2000 to 2001.


  3. Add the number of people added from 2000 to 2001 to the initial population in 2000. This gives us 3,924 plus 247,842 or 251,766.



Before we go on to estimate the population for the other years, note that we can simplify the computation above: In step 2 we’re calculating 0.015834 times 247,842, and in step 3 we’re adding to it 1 times 247,842. Since we’re multiplying by 247,842 in both steps, we can factor it out and just multiply 247,842 by the sum of 0.015834 plus 1, or 1.015834.2

The calculation above then becomes the following (again, feel free to follow along at home):





  1. Convert the growth rate expressed as a percentage into the non-percentage form, by dividing it by 100. This gives us 1.5834 divided by 100 or 0.015834.


  2. Add 1 to the (non-percentage) growth rate, and then multiply that value times the initial population in 2000. This gives us 1.015834 times 247,842 or 251,766 for the estimated population in 2001 (again, rounding down to a whole number).



Now that we have an estimated population for 2001, we can calculate the estimated population for 2002 by following the steps above and just substituting 251,766 as our initial population in 2001. This gives us 1.015834 times 251,766 or 255,752 for the estimated population in 2002. We can continue doing this for the other years; the general process is as follows:



  1. Start with the initial population in 2000 (247,842) and the estimated growth rate (1.5384% per year, or 0.015384 in non-percentage form).

  2. For each year from 2001 to 2009, multiply the previous year’s population by the sum of 1 plus the (non-percentage) growth rate, or 1.015384 in our example.



Doing this gives us the following table; I’ve included the actual initial and final populations in 2000 and 2010 for comparison:

<table >

<tr >
<td >Year
</td>
<td >Population (Actual)
</td>
<td >Population (Estimated)
</td></tr>

<tbody >
<tr >
<td >2000
</td>
<td >247,842
</td>
<td >
</td></tr>
<tr >
<td >2001
</td>
<td >
</td>
<td >251,766
</td></tr>
<tr >
<td >2002
</td>
<td >
</td>
<td >255,752
</td></tr>
<tr >
<td >2003
</td>
<td >
</td>
<td >259,802
</td></tr>
<tr >
<td >2004
</td>
<td >
</td>
<td >263,916
</td></tr>
<tr >
<td >2005
</td>
<td >
</td>
<td >268,095
</td></tr>
<tr >
<td >2006
</td>
<td >
</td>
<td >272,340
</td></tr>
<tr >
<td >2007
</td>
<td >
</td>
<td >276,652
</td></tr>
<tr >
<td >2008
</td>
<td >
</td>
<td >281,033
</td></tr>
<tr >
<td >2009
</td>
<td >
</td>
<td >285,483
</td></tr>
<tr >
<td >2010
</td>
<td >287,085
</td>
<td >
</td></tr>
</tbody>
</table>

So far so good. Now let’s do one final step and calculate an estimated population for 2010 using the method we used in computing the values for 2001 and 2009: We take 285,483 (the value for 2009) and multiply it by 1.015834. The result is an estimate of 290,005 for the population in 2010.

But wait--this seems way too high. The actual population in 2010 was 285,075 or almost five thousand less than our estimate. Maybe we shouldn’t have rounded off the estimated growth rate and the estimated populations we used in the calculations? No, if you do the calculations without rounding then the estimated 2010 population is almost exactly the same.3

We have to conclude that we’ve overestimated the growth rate, and that the actual growth rate is somewhat less than 1.5834%. How can we produce a better estimate? I’ll take up that question in part 2.



* * *



1. Population figures are taken from the “Total Population” value in the “Profile of General Demographic Characteristics” for Howard County, Maryland for [2000](http://factfinder2.census.gov/bkmk/table/1.0/en/DEC/00_SF1/DP1/0500000US24027) and [2010](http://factfinder2.census.gov/bkmk/table/1.0/en/DEC/10_DP/DPDP1/0500000US24027).

2. This is a application of what they teach in elementary school as the distributive law of arithmetic. For example, if you multiply 5 times the sum of 3 plus 7 that’s the same as multiplying 5 times 3 and adding it to 5 times 7, and vice versa. (3 plus 7 is 10, and 5 times 10 is 50. Similarly, 5 times 3 is 15, 5 times 7 is 35, and the sum is again 50.)

3. More specifically, when I used the full precision of my calculator the estimated population for 2010 was 290,003, a difference of only 2 from the estimate above.
