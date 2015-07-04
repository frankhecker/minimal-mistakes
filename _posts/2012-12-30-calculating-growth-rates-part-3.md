---
comments: false
date: 2012-12-30 23:56:09+00:00
layout: post
slug: calculating-growth-rates-part-3
title: Calculating growth rates (for Howard County or otherwise), part 3
tags:
- howardcounty
- misc
---

In [part 2](/2012/12/16/calculating-growth-rates-part-2/) of this series I discussed a more correct approach to the problem of estimating growth rates, using Howard County’s population in the 21st century as an example. Given the population figures for the 2000 and 2010 censuses, we can estimate an annual growth rate as follows:



	
  1. Divide the final population in 2010 by the initial population in 2000.

	
  2. Take the 10th root of the result from step 1 to find the growth factor. (We use 10 because the period we’re considering is 10 years long.)

	
  3. Subtract 1 from the growth factor to find the growth rate.

	
  4. Multiply the growth rate by 100 to convert it into percentage form.


Recall that you can take roots using a scientific calculator app for your smartphone, tablet, or PC, as described in the last post; you can also compute roots in a application like Microsoft Excel or Google Spreadsheets.1

[caption id="attachment_6348" align="alignright" width="155"][![Picture of iPhone scientific calculator](http://hecker.files.wordpress.com/2012/12/scientific-calculator-iphone-small.png)](http://osxdaily.com/2011/12/29/iphone-scientific-calculator/) iPhone scientific calculator[/caption]

Using the technique above I estimated the growth rate of Howard County from 2000 to 2010 as 1.4807% per year, or 0.014807 in non-percentage form. I then asked how we could estimate the future population of Howard County, say in 2020.

One approach to do this is similar to how we computed estimated populations from 2001 through 2009: We could add 1 to the non-percentage form of the growth rate to get the growth factor, and then multiply the growth factor by the Census population in 2010 to get an estimated population for 2011. We could then multiply the estimated 2011 population by the growth factor to get an estimated population for 2012, multiply that value again by the growth factor to get an estimate for 2013, and continue year by year until after ten multiplications we had an estimate for 2020.

[caption id="attachment_6396" align="alignright" width="117"][![Photo of y-to-power-of-x key](http://hecker.files.wordpress.com/2012/12/scientific-calculator-iphone-power.png)](http://frankhecker.com/?attachment_id=6396) y to the x-th power[/caption]

However we can simplify this calculation as follows: Since we started with the population in 2010, multiplied by the growth factor each time, and estimated the population for 10 years out (2011 through 2020), this is the same as raising the growth factor to the power of 10 and then multiplying the resulting value by the population in 2010. But do we still have to compute the 10th power of the growth factor by doing all the multiplications ourselves?

THe answer is no. Just as the scientific calculator app on your iPhone or other device can compute roots for you, it can also compute powers. Let’s try it out: Suppose we want to find the value of 5 raised to the 4th power (in other words, 5 times 5 times 5 times 5). On the iPhone’s calculator we enter 5, press the “y to the x-th power” key (pictured), enter 4, then press the “=” key. The answer should be 625, since 5 to the 4th power is 625.2

We can now try the suggested approach to estimating Howard County population in 2020, given our estimated annual growth rate:



	
  1. Divide the growth rate by 100 to convert it into non-percentage form. This gives us 1.4807% divided by 100, or 0.014807.

	
  2. Add 1 to the growth rate to find the growth factor. This gives us 1 plus 0.014807 or 1.014807.

	
  3. Compute the growth factor raised to the power of 10. (We use 10 because we're estimating the population in 2020, 10 years after 2010.) In our scientific calculator app we enter 1.014807, press the “y to the x-th power” key, enter 10, then press the “=” key; the result is 1.158336.

	
  4. Multiply the population in 2010 by the value just computed. This gives us 287,085 times 1.158336 or 332,541 for the estimated population in 2020.


Note that we could actually bypassed this computation by noting that if the population grew by 15.84% in the 10 years from 2000 to 2010 (as noted in part 1) and the growth rate didn’t change, we’d expect the population to grow another 15.84% in the next 10 years from 2010 to 2020. This is exactly what we found in the computation above: We calculated the population in 2020 as 1.158336 times the population in 2010, which corresponds to a percentage increase over 10 years of 15.834% (rounding off to five significant digits).

However what if we had an interval that wasn’t a multiple of 10? For example, what if we want to estimate the Howard County population in 2035? Assuming we use the 2010 population as our starting point we need to calculate the 25th power of the growth factor 1.014807: Enter 1.014807, press the “y to the x-th power” key, enter 25, then press the “=” key; the result is 1.444064. Multiplying this by the 2010 population of 287,085 gives us 414,569 for the estimated population in 2035.

So far so good. In my next post I’ll go back and explore further how I got my initial estimate in part 1 so wrong, as a prelude to discussing growth rates in a financial context and how to obtain better estimates of growth rates.



* * *



1. Microsoft Excel has a built-in function SQRT to take square roots, but uses more cryptic formulas for taking higher roots. In our example we had to take the 10th root of 1.158339; in Excel this would be expressed with either of the formulas “=POWER(1.158339,1/10)” or “=1.158339^(1/10)”. In general if we have values in two spreadsheet cells A1 and A2 then either of the formulas “=POWER(A1,1/A2)” or “=A1^(1/A2)” would take the A2-th root of A1.

These formulas will also work in Google Spreadsheets. To avoid a lengthy digression I'll skip for now any explanation of why these formulas are written the way they are.

2, In Microsoft Excel or Google Spreadsheets the equivalent operation of computing 5 to the power of 4 can be done using either of the formulas  “=POWER(5, 4)” or “=5^4”. In general if we have values in two spreadsheet cells A1 and A2 then either of the formulas “=POWER(A1,A2)” or “=A1^A2” would produce A1 raised to the A2-th power.
