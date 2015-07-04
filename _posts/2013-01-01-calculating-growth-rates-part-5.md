---
comments: false
date: 2013-01-01 22:33:56+00:00
layout: post
slug: calculating-growth-rates-part-5
title: Calculating growth rates (for Howard County or otherwise), part 5
tags:
- howardcounty
- misc
---

In [part 4](/2012/12/31/calculating-growth-rates-part-4/) of this series I discussed the general problem of estimating growth rates for periods less than a year, and using Howard County’s population in the 21st century as an example calculated estimated monthly, week, daily, and even hourly growth rates for the county based on the Census population figures for 2000 and 2010.

The problem with those calculations is that it’s hard to get a sense for the relative magnitude of the growth rates. For example, how much different is a growth rate of 0.12256% per month from a growth rate of 1.4807% per year? It would be nice to express the growth rates according to a common time period, just as (for example) we use “miles per hour” to refer to the speed of our cars even when we’re just driving 2 minutes to the grocery.

However we have to be careful about this, since a percentage increase that occurs (say) every hour on the hour leads to different results than a percentage increase that is conceived to occur but once a month or once a year. (This is exactly what tripped me up when doing my original estimates of growth rates.)

The solution is to multiply the various rates appropriately to express them as an annual rate, but then to qualify the result by referencing the period over which the growth is assumed to occur. The standard way to do this is to speak of growth being “compounded” at particular intervals. For example, we can take the monthly growth rate of 0.12256% estimated in part 4, multiply it by 12 (the number of months in a year), and express it as an annual growth rate of 1.4707% “compounded monthly”. The following table does this for all the growth rates I calculated in part 4:
<table >

<tr >

<td >Period
</td>

<td >Per-period growth rate
</td>

<td >Annual growth rate (with compounding)
</td>
</tr>

<tbody >
<tr >

<td >Decade
</td>

<td >15.384%
</td>

<td >1.5384% (compounded per decade)
</td>
</tr>
<tr >

<td >Year
</td>

<td >1.4807%
</td>

<td >1.4807% (compounded yearly)
</td>
</tr>
<tr >

<td >Month
</td>

<td >0.12256%
</td>

<td >1.4707% (compounded monthly)
</td>
</tr>
<tr >

<td >Week
</td>

<td >0.028271%
</td>

<td >1.4701% (compounded weekly)
</td>
</tr>
<tr >

<td >Day
</td>

<td >0.0040271%
</td>

<td >1.4699% (compounded daily)
</td>
</tr>
<tr >

<td >Hour
</td>

<td >0.00016779%
</td>

<td >1.4698% (compounded hourly)
</td>
</tr>
</tbody>
</table>
There are several points worth noting here. First, the idea of compounding in this context is exactly the same as that used in financial calculations: For example, if you have a savings account, your bank will periodically credit you with whatever interest you’ve earned on the money in your account; this is the compounding period.

Second, as compounding periods get shorter the same amount of growth can be produced with a lower nominal rate: In our example a 1.4698% rate compounded hourly produced the same growth over a decade as a 1.4807% rate compounded yearly. Or to put it another way, in a financial context you are better off having a shorter compounding period for a given nominal rate: If the rate on your savings account is nominally 2% per year then you are better off with daily compounding than with monthly.

However there is a limit to how much shorter compounding can affect growth: In the table above moving from yearly to monthly compounding reduced the needed growth rate from 1.4807% to 1.4707%, a difference of 0.01%, but moving from monthly to weekly compounding reduced it only to 1.4701%, a difference of 0.0006%.

As compounding periods get shorter and shorter (per minute, per second, and so on), it appears as if the estimated growth rate will reach some sort of limit, around 1.4698% or 1.4699% in our example. We can refer to this as an annual growth rate compounded continuously or, more simply, as a continuous growth rate. A continuous growth rate isn’t that applicable to your savings account (since your bank isn’t going to credit you with new interest earned every nanosecond) or even to Howard County’s population (since it doesn’t grow every nanosecond either, and you can’t add fractional people like you can fractional dollars).

However continuous or near-continuous growth is very common in nature: Think of bacteria multiplying in a fresh petri dish or (more ominously) in your body after you’re infected with something. The mathematics of continuous growth is also simpler and more elegant than that used for growth compounded on a periodic basis. For example, to compute a continuous growth rate for our Howard County population example I don’t need to do calculations for compounding per minute, per second, and so on in order to find the limit. I can do a quick calculation on my iPhone and tell you that the continuous growth rate in our example is 1.4698689% expressed to 8 significant figures.1

How did I do that? If anyone out there is still reading and (more important) if I can find a good way to explain it, I’ll address that question in a possible part 6.



* * *



1. Note that this is higher than the figure of 1.4698% we calculated for hourly compounding, when we would expect the limit to be slightly smaller. As it turns out we’re the victims of rounding in computing the growth rate per hour; expressed to 8 digits the estimated hourly growth rate is actually 0.00016779340%, which corresponds to an annual rate of 1.4698701% compounded hourly, slightly larger than the continuous growth rate of 1.4698689%.
