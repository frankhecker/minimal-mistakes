---
comments: false
date: 2012-12-16 05:13:30+00:00
layout: post
slug: calculating-growth-rates-part-2
title: Calculating growth rates (for Howard County or otherwise), part 2
tags:
- howardcounty
- misc
---

In my [last post](/2012/12/09/calculating-growth-rates-part-1/) I introduced the problem of estimating growth rates, using Howard County’s population in the 21st century as an example. I took a simpleminded approach:



	
  1. Take the difference between the county’s population in 2010 and 2000.

	
  2. Divide that difference by the population in 2000 and multiply by 100 to get the percentage growth increase from 2000 to 2010.

	
  3. Divide that percentage by 10 to get an estimate of the population growth per year.


As we saw in the last post, the simpleminded approach produces an incorrect answer: the estimated growth rate is too large. In this post I’ll show a more correct way to estimate the growth rate. As before, I’ll avoid mathematical notation and restrict myself to operations you can do on a calculator or in a program like Microsoft Excel or Google Spreadsheets.

The key to finding a better approach is to look at the method we used to prove the simpleminded approach incorrect: taking the supposed growth rate, estimating year by year what growth it would produce, and then comparing it to the actual final population figure. The twist this time is to assume that we don’t know the growth rate initially, and instead use the method to estimate it. So, we start with the population of Howard County in 2000 (247,842), and we then look at how populations in 2001, 2002, and so on, would be calculated for a given growth rate:

	
  1. We assume that the (as yet unknown) growth rate is expressed in the non-percentage form. (For example, we’d express a 5% growth rate as 0.05.)

	
  2. To get the population in 2001 we add 1 to the (non-percentage) growth rate and then multiply that value times the initial population in 2000. To save some words we’ll refer to the sum of 1 plus the growth rate as the growth factor. (For example, if the growth rate were 5% or 0.05 then the growth factor would be 1.05.) Another way to express this is that the population in 2001 is calculated as the population in 2000 times the growth factor.

	
  3. To get the population in 2002 we multiply the population previously calculated for 2001 by the growth factor. But wait: The population in 2001 was in turn calculated as the 2000 population times the growth factor. So another way to calculate the 2002 population is to multiply the population of 2000 by the growth factor (which gives us the 2001 population), and then to multiply by the growth factor again. The result is that the 2002 population is calculated as the 2000 population times the growth factor times the growth factor.


This is a key point, so let’s stop here and look at an example. If the growth rate were actually 5% then the growth factor would be 1.05. The 2001 population would then be 247,842 times 1.05 or 260,234, and the 2002 population would be 260,234 times 1.05 or 273,246. We could get the same answer by multiplying 1.05 by 1.05 to get 1.1025, and then multiplying 1.1025 times 247,842 to get 273,246.

Now let’s continue:

	
  4. The population in 2003 is calculated as the population in 2002 times the growth factor. Since we can calculate the population in 2002 as the population in 2000 times the growth factor multiplied by itself (growth factor times growth factor), we can calculate the population in 2003 as the population in 2000 times the growth factor multiplied by itself and then multiplied again by itself again. In other words, we calculate the 2003 population as the 2000 population times the growth factor times the growth factor times the growth factor.

	
  5. The population in 2004 is calculated as the population in 2003 times the growth factor. Following from the previous item we can calculate the population in 2004 as the population in 2000 times the growth factor times the growth factor times the growth factor times the growth factor.


Let’s stop again here to introduce some new terminology: You may know that the product of the growth factor times itself (growth factor times growth factor) is referred to as the square of the growth factor, and that the growth factor times the growth factor times the growth factor is referred to as the cube of the growth factor. What do we call the value calculated as the growth factor times the growth factor times the growth factor times the growth factor (i.e., where the growth factor appears four times in the product)?

The standard term is for this value is the growth factor raised to the power of 4 or (less verbosely) the 4th power of the growth factor, because in calculating the product the growth factor appears four times. As an example, if the growth factor is 1.05 then the 4th power of the growth factor would be 1.05 times 1.05 times 1.05 times 1.05, or 1.2155 (to five significant digits). Continuing on...

	
  6. We can now rephrase how we estimate the 2004 population: It’s calculated as the 2000 population times the 4th power of the growth factor.

	
  7. The population in 2005 is then the 2004 population times the growth factor, or equivalently the 2000 population times the 4th power of the growth factor, times the growth factor again. How do we express the product of the 4th power of the growth factor and the growth factor itself? In this product the growth factor appears 5 times (4 times from the 4th power and one time when multiplying by the growth factor once more), so we refer to it as the 5th power of the growth factor. The 2005 population is thus the 2000 population times the 5th power of the growth factor.

	
  8. The 2006 population is then the 2005 population times the growth factor, which is equal to the 2000 population times the 5th power of the growth factor, times the growth factor again, which is equal to the 2000 population times the 6th power of the growth factor.

	
  9. The 2007 population is then the 2006 population times the growth factor, which is equal to the 2000 population times the 7th power of the growth factor.

	
  10. Do you see the pattern here? The 2007 population is equal to the 2000 population times the 7th power of the growth factor. The 2008 population is equal to the 2000 population times the 8th power of the growth factor. Finally, the 2009 population is equal to the 2000 population times the 9th power of the growth factor.


We now come to 2010. On the one hand, we can calculate the population in 2010 as the population in 2000 times the 10th power of the growth factor. On the other hand, we actually know the population in 2010. If we get the growth rate (and thus the growth factor) correct then those two numbers should be the same. In particular, we can plug in the population values for 2000 (247,842) and 2010 (287,085) and see that 287,085 should equal 247,842 times the 10th power of the growth factor. This in turn means that the 10th power of the growth factor should be equal to 287,085 divided by 247,842, or 1.158339 (to seven significant digits). We now know what the 10th power of the growth factor is. How do we calculate the growth factor itself?

The short answer is that we do what’s called “taking a root”. What is a root? Some examples: We know that 5 times 5 is 25, so we refer to 25 as 5 squared; alternatively we could say that 5 is the “square root” of 25. Similarly, 5 times 5 times 5 is 125, so 125 is 5 cubed and 5 is the cube root of 125. Finally, 5 times 5 times 5 times 5 is 625, so 625 is the 4th power of 5 and 5 is the 4th root of 625. In other words, taking a power and taking a root are inverse operations: If one number is (say) the 10th power of a second number then the second number is the 10th root of the first.

<figure markdown="1">
[![Picture of iPhone scientific calculator](http://hecker.files.wordpress.com/2012/12/scientific-calculator-iphone-small.png)](http://osxdaily.com/2011/12/29/iphone-scientific-calculator/) iPhone scientific calculator
</figure>

In this case the 10th power of the growth factor is 1.158339, so the growth factor is the 10th root of 1.158339. How do we find this value? We use a calculator or a computer. For example, the standard calculator app on the iPhone can be turned into a so-called “scientific calculator” by turning the phone on its side (like you would do when watching a YouTube video). On the left are keys for special functions, among which is one to take the xth root of a number y.1

<figure markdown="1">
![Picture of x-root-y key on iPhone scientific calculator](http://hecker.files.wordpress.com/2012/12/scientific-calculator-iphone-root.png)
<figcaption>Take the xth root of y</figcaption>
</figure>



Let’s try it out: Suppose we want to find the 4th root of 625. On the iPhone’s calculator we enter 625, press the “xth root of y” key (pictured), enter 4, then press the “=” key. The answer should be 5, since 5 to the 4th power is 625.2

Now we’re almost there. The growth factor is the 10th root of 1.158339, which our calculator tells us is 1.014807. (On the iPhone’s calculator enter 1.158339, press the “xth root of y” key, enter 10, then press the “=” key.) Recall that the growth factor is 1 plus the growth rate, so the growth rate is 1 minus the growth factor, or 0.014807. Multiplying by 100 to convert this into a percentage, the estimated growth for Howard County’s population from 2000 to 2010 is 1.4807% per year.

Before we go on, we can summarize this new method for calculating the growth rate as follows:



	
  1. Divide the population in 2010 by the population in 2000. This gives 287,085 divided by 247,842, or 1.158339.

	
  2. Take the 10th root of the result from step 1 to find the growth factor. The 10th root of 1.158339 is 1.014807.

	
  3. Subtract 1 from the growth factor to find the growth rate. This gives 1 minus 1.014807, or 0.014807.

	
  4. Multiply the growth rate by 100 to convert it into percentage form. This gives 100 times 0.014807, or 1.4807%.


We can check this estimate as we did before, by calculating the estimated populations from 2001 to 2009, multiplying the previous year’s population by the growth factor each time:
<table >

<tr >

<td >Year
</td>

<td >Population (Actual)
</td>

<td >Population (Estimated)
</td>
</tr>

<tbody >
<tr >

<td >2000
</td>

<td >247,842
</td>

<td >
</td>
</tr>
<tr >

<td >2001
</td>

<td >
</td>

<td >251,512
</td>
</tr>
<tr >

<td >2002
</td>

<td >
</td>

<td >255,236
</td>
</tr>
<tr >

<td >2003
</td>

<td >
</td>

<td >259,015
</td>
</tr>
<tr >

<td >2004
</td>

<td >
</td>

<td >262,850
</td>
</tr>
<tr >

<td >2005
</td>

<td >
</td>

<td >266,742
</td>
</tr>
<tr >

<td >2006
</td>

<td >
</td>

<td >270,692
</td>
</tr>
<tr >

<td >2007
</td>

<td >
</td>

<td >274,700
</td>
</tr>
<tr >

<td >2008
</td>

<td >
</td>

<td >278,767
</td>
</tr>
<tr >

<td >2009
</td>

<td >
</td>

<td >282,895
</td>
</tr>
<tr >

<td >2010
</td>

<td >287,085
</td>

<td >
</td>
</tr>
</tbody>
</table>
As the final step we calculate an estimated population for 2010 using the method we used in computing the values for 2001 and 2009: We take 282,895 (the estimated value for 2009) and multiply it by 1.014807. The result is an estimate of 287,084 for the population in 2010, within 1 of the actual value of 287,085. (This difference is due to rounding error.)

Unlike the previous method from [part 1](/2012/12/09/calculating-growth-rates-part-1/), this new method produces a good estimate for the growth rate. Can we project future Howard County population using this estimate? Can we use this method of estimating growth rates in other contexts, for example in financial calculations? And can we produce an even better estimate? I’ll answer these questions in part 3.

UPDATE: Corrected the values in step 4 of the new method (changed 1.014807 to 0.014807) and in the computation of the estimated population for 2010 (changed 287,083 to 287,084).



* * *



1. I’ve never owned an Android smartphone or tablet, so I don’t know if Android devices typically have a similar scientific calculator app built in. However I suspect there are plenty of scientific calculator apps, including some free ones, in the app store for whatever smartphone or tablet you have.

2. You may have noticed a key to the left of the “xth root of y” key that has a similar symbol but no “x” or “y”. This is the square root key. For example, if you enter 25 and then press the square root key you’ll get the answer 5, the square root of 25. This is exactly the same as entering 25, pressing the “xth root of y” key, entering 2, and pressing the “=” key.
