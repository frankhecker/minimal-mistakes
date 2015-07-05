---
comments: false
date: 2008-11-16 06:41:04+00:00
layout: post
slug: income-inequality-in-howard-county-part-1
title: Income inequality in Howard County, part 1
tags:
- howardcounty
- ginicoefficient
- inequality
---

(This is part 1 of a two-part post; for the conclusion see [part 2](http://hecker.wordpress.com/2008/11/16/income-inequality-in-howard-county-part-2/).)

In a [previous post](http://hecker.wordpress.com/2008/10/01/so-bill-gates-walks-into-howard-county/) I discussed the concept of median income and how it avoids certain distortions inherent in mean (average) income. However median income by itself is not adequate to characterize the economic status of households in Howard County (or anywhere else for that matter). In particular, the median income just provides the midpoint for income, i.e., the income value for which 50% of the households make more and 50% make less; it does _not_ address the question of how income is actually distributed among the various households.

For example, let's go back to our simple 10-household example from the last post:
<table border="0" >
<tbody >
<tr >

<td >Household
</td>

<td >Household Income
</td>

<td >Share of Household Income
</td>

<td >Cumulative Share of Household Income
</td>
</tr>
</tbody>
<tbody >
<tr >

<td >1
</td>

<td >$16,000
</td>

<td >1.35%
</td>

<td >1.35%
</td>
</tr>
<tr >

<td >2
</td>

<td >$37,000
</td>

<td >3.11%
</td>

<td >4.46%
</td>
</tr>
<tr >

<td >3
</td>

<td >$56,000
</td>

<td >4.71%
</td>

<td >9.17%
</td>
</tr>
<tr >

<td >4
</td>

<td >$75,000
</td>

<td >6.31%
</td>

<td >15.48%
</td>
</tr>
<tr >

<td >5
</td>

<td >$92,000
</td>

<td >7.74%
</td>

<td >23.21%
</td>
</tr>
<tr >

<td >6
</td>

<td >$111,000
</td>

<td >9.34%
</td>

<td >32.55%
</td>
</tr>
<tr >

<td >7
</td>

<td >$132,000
</td>

<td >11.10%
</td>

<td >43.65%
</td>
</tr>
<tr >

<td >8
</td>

<td >$163,000
</td>

<td >13.71%
</td>

<td >57.36%
</td>
</tr>
<tr >

<td >9
</td>

<td >$190,000
</td>

<td >15.98%
</td>

<td >73.34%
</td>
</tr>
<tr >

<td >10
</td>

<td >$317,000
</td>

<td >26.66%
</td>

<td >100.00%
</td>
</tr>
</tbody></table>
I've added two new columns of data, but otherwise the situation is as I described it previously: the ten households have an average income of $118,900 but a median income of $101,500, very similar to the actual numbers for Howard County1. Now let's look at a second 10-household example:
<table border="0" >
<tbody >
<tr >

<td >Household
</td>

<td >Household Income
</td>

<td >Share of Household Income
</td>

<td >Cumulative Share of Household Income
</td>
</tr>
</tbody>
<tbody >
<tr >

<td >1
</td>

<td >$7,000
</td>

<td >0.59%
</td>

<td >0.59%
</td>
</tr>
<tr >

<td >2
</td>

<td >$9,000
</td>

<td >0.76%
</td>

<td >1.35%
</td>
</tr>
<tr >

<td >3
</td>

<td >$13,000
</td>

<td >1.09%
</td>

<td >2.44%
</td>
</tr>
<tr >

<td >4
</td>

<td >$18,000
</td>

<td >1.51%
</td>

<td >3.95%
</td>
</tr>
<tr >

<td >5
</td>

<td >$43,000
</td>

<td >3.62%
</td>

<td >7.57%
</td>
</tr>
<tr >

<td >6
</td>

<td >$160,000
</td>

<td >13.46%
</td>

<td >21.03%
</td>
</tr>
<tr >

<td >7
</td>

<td >$165,000
</td>

<td >13.88%
</td>

<td >34.90%
</td>
</tr>
<tr >

<td >8
</td>

<td >$174,000
</td>

<td >14.63%
</td>

<td >49.54%
</td>
</tr>
<tr >

<td >9
</td>

<td >$190,000
</td>

<td >15.98%
</td>

<td >65.52%
</td>
</tr>
<tr >

<td >10
</td>

<td >$410,000
</td>

<td >34.48%
</td>

<td >100.00%
</td>
</tr>
</tbody></table>
As it happens, these ten households have exactly the same average income ($118,900, $1,189,000 divided by 10) and exactly the same median income ($101,500, halfway between $43,000 and $160,000) as in the first example. However the distribution of income looks very different; in its division of households between rich and poor it looks much more like Baltimore city or Washington, DC, than it does Howard County. Clearly this difference in income inequality is not captured by the median or mean income, or even by related measures like the difference between the mean and the median. How can we quantify this difference?

One commonly-used measure of income inequality is the so-called Gini coefficient or Gini index. The computation of the Gini coefficient is more complicated than that for mean or median income, but it's still relatively straightforward and comprehensible. The key is to look at the numbers in the last two columns of the tables above, and especially the last column, cumulative share of household income.

The third column simply gives the share of household income going to that particular household. For example, in the first table household #1 has  income of $16,000 against a total of $1,189,000 for all households, or 1.35% of all income; similarly household #10 has a 26.66% share of all income ($317,000 divided by $1,189,900), and so on for the other households. The fourth column then uses these figures to compute the share of income going to the poorest _n%_ households. For example, household #1 has a 1.35% share of total income and household #2 has a 3.11% share, so the poorest 20% of households (i.e., households #1 and #2 out of 10 total households) have 4.46% of all income (1.35% plus 3.11%). Similarly we can add the income share figures for households #1 through #9 to determine that the poorest 90% of households have 73.34% of all income, with the remaining 10% of households (i.e., household #10) having 26.66% as noted above.

The cumulative share of income can be graphed as shown in the figure below. The red points show the values from the fourth column of the table above, with the red lines then connecting the dots to approximate a curve; if there were more households there would be more points and a correspondingly smoother curve.

<figure markdown="1">
[![Example 1 - Graph of an income distribution similar to that of Howard County, Maryland](http://hecker.files.wordpress.com/2008/10/gini-example-1.png?w=300)](http://hecker.files.wordpress.com/2008/10/gini-example-1.png)
</figure>

Now let's look at the graph for our second example from above:

<figure markdown="1">
[![Example 2 - Graph of a more unequal income distribution](http://hecker.files.wordpress.com/2008/10/gini-example-2.png?w=300)](http://hecker.files.wordpress.com/2008/10/gini-example-2.png)
</figure>

Again the red points represent the values for cumulative share of income from the fourth column of the second table, with the red lines connecting the dots. What about the blue dots in both graphs? Those represent the ideal case where all the household incomes are equal, or nearly so. In that case the poorest 10% of households will have (almost) 10% of total household income, the poorest 20% will have (almost) 20% of income, and so on. The corresponding curve will then be a straight (or nearly straight) line, here shown in blue.

Note that as household income becomes more unequal, the curve of cumulative income share (the red curve) moves further and further away from the blue line representing perfect (or nearly perfect) income equality. This gives us a straightforward way to define the Gini coefficient: It's the size of the blue-shaded area between the blue line and the red curve, expressed as a fraction (or percentage) of the total area under the blue line. For nearly equal income distributions the red curve will be very close to the blue line, and the Gini coefficient will be close to zero, while for very unequal income distributions the red curve will be far away from the blue line, and the Gini coefficient will approach one (or 100%).

In the first example the Gini coefficient is 0.38, nearly the same as the Gini coefficient of 0.379 for Howard County (see the [Census ACS table 19083](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-mt_name=ACS_2007_1YR_G2000_B19083&-CONTEXT=dt&-tree_id=307&-geo_id=05000US24027&-search_results=01000US&-format=&-_lang=en))2. In the second example the Gini coefficient is 0.53. This is comparable to the [Gini coefficient for the District of Columbia](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19083&-tree_id=307&-redoLog=true&-_caller=geoselect&-geo_id=04000US11&-search_results=01000US&-format=&-_lang=en), which is 0.542. More interestingly for our purposes, it's nearly the same as 0.534, the [Gini coefficient for Fairfield County, Connecticut](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19083&-tree_id=307&-redoLog=true&-_caller=geoselect&-geo_id=05000US09001&-search_results=04000US11&-format=&-_lang=en), a suburban county in the New York City metropolitan area that's home to many hedge-fund managers and other wealthy financial services professionals.

Unlike DC, Fairfield County is a pretty affluent area overall; it has a [median household income of $80,241](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19013&-tree_id=307&-redoLog=true&-geo_id=05000US09001&-search_results=04000US11&-format=&-_lang=en) (somewhat lower than Howard County's) and a mean household income of $130,397 (somewhat higher than Howard County's).3

The following 10-household example roughly mirrors the [Fairfield County household income breakdown](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-mt_name=ACS_2007_1YR_G2000_B19001&-CONTEXT=dt&-tree_id=307&-geo_id=05000US09001&-search_results=01000US&-format=&-_lang=en):
<table border="0" >
<tbody >
<tr >

<td >Household
</td>

<td >Household Income
</td>

<td >Share of Household Income
</td>

<td >Cumulative Share of Household Income
</td>
</tr>
</tbody>
<tbody >
<tr >

<td >1
</td>

<td >$11,000
</td>

<td >0.84%
</td>

<td >0.84%
</td>
</tr>
<tr >

<td >2
</td>

<td >$23,000
</td>

<td >1.76%
</td>

<td >2.61%
</td>
</tr>
<tr >

<td >3
</td>

<td >$37,000
</td>

<td >2.84%
</td>

<td >5.44%
</td>
</tr>
<tr >

<td >4
</td>

<td >$53,000
</td>

<td >4.06%
</td>

<td >9.51%
</td>
</tr>
<tr >

<td >5
</td>

<td >$70,000
</td>

<td >5.37%
</td>

<td >14.88%
</td>
</tr>
<tr >

<td >6
</td>

<td >$90,000
</td>

<td >6.90%
</td>

<td >21.78%
</td>
</tr>
<tr >

<td >7
</td>

<td >$115,000
</td>

<td >8.82%
</td>

<td >30.60%
</td>
</tr>
<tr >

<td >8
</td>

<td >$145,000
</td>

<td >11.12%
</td>

<td >41.72%
</td>
</tr>
<tr >

<td >9
</td>

<td >$215,000
</td>

<td >16.49%
</td>

<td >58.21%
</td>
</tr>
<tr >

<td >10
</td>

<td >$545,000
</td>

<td >41.79%
</td>

<td >100.00%
</td>
</tr>
</tbody></table>
The corresponding Gini coefficient diagram is as follows:

<figure markdown="1">
[![Example 1 - Graph of an income distribution similar to that of Fairfield County, Connecticut](http://hecker.files.wordpress.com/2008/10/gini-example-3.png?w=300)](http://hecker.files.wordpress.com/2008/10/gini-example-3.png)
</figure>

What makes Howard County special with respect to income inequality, and Fairfield County particularly interesting as a comparison? The answers to those questions will be the subject of [part 2](http://hecker.wordpress.com/2008/11/16/income-inequality-in-howard-county-part-2/) of this two-part post.



* * *

1. The US Census Bureau's American Community Survey estimates the median household income in Howard County at $101,672 for 2007 ([ACS table B19013](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-mt_name=ACS_2007_1YR_G2000_B19013&-CONTEXT=dt&-tree_id=307&-geo_id=05000US24027&-search_results=01000US&-format=&-_lang=en)). (This figure has a margin of error of +/-$3,594, which we'll ignore for purposes of this discussion.) The ACS tables apparently don't directly provide a figure for mean household income, but it can be computed by taking the aggregate household income estimate of $11,734,222,700 ([ACS table B19025](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19025&-tree_id=307&-redoLog=true&-geo_id=05000US24027&-search_results=01000US&-format=&-_lang=en)) and dividing it by the number of households, 98,866 ([ACS table 19001](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19001&-tree_id=307&-redoLog=true&-_caller=geoselect&-geo_id=05000US24027&-search_results=05000US09001&-format=&-_lang=en)); the resulting estimate for mean income is $118,688.

2. For those who'd like to check this result, the computation is relatively straightforward. First, we convert all percentages to fractions, so that the horizontal axis goes from 0 to 1, and the vertical axis likewise; the cumulative shares of income are then 0.0135 (for 0.1 of the population), 0.0446 (for 0.2), 0.0917 (for 0.3), and so on. The easiest way to compute the Gini coefficient is to compute the area under the red curve, and then to subtract it from the area under the blue line; the resulting difference is the size of the blue-shaded area, and we can then divide it by the area under the blue line to obtain the Gini coefficient.

The area under the blue line is simple to compute: It's a triangle that is half of a 1 by 1 square, so its area is 0.5. The area under the red line is composed of a series of nine [trapezoids](http://en.wikipedia.org/wiki/Trapezoid) and one triangle (at the left). The area of the triangle is half the base times the height: 0.5 times 0.1 (base) times 0.0135 (height), or 0.000675. The area of each trapezoid is the base times the average of the two vertical sides; for the first trapezoid (counting from the left) this is 0.1 (the base) times the sum of 0.0135 and 0.0446 divided by 2 or 0.0297 (the average of the two vertical sides), or 0.00297. Continuing with the other areas (left as an exercise for the reader), the sum of all the areas is about 0.31; this is the area under the red curve. We subtract this from 0.5 to get 0.19 as the area of the blue-shaded area, and then divide by 0.5 (the area under the blue line) to get 0.38 as the Gini coefficient.

3. As with Howard County, the mean household income for Fairfield County can be computed by taking the [aggregate household income ](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19025&-tree_id=307&-redoLog=false&-geo_id=05000US09001&-search_results=01000US&-format=&-_lang=en) of $42,228,652,700 and dividing it by 323,848, the [number of households](http://factfinder.census.gov/servlet/DTTable?_bm=y&-context=dt&-ds_name=ACS_2007_1YR_G00_&-CONTEXT=dt&-mt_name=ACS_2007_1YR_G2000_B19001&-tree_id=307&-redoLog=false&-geo_id=05000US09001&-search_results=01000US&-format=&-_lang=en).
