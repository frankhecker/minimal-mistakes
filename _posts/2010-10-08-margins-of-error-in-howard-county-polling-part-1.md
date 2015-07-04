---
comments: false
date: 2010-10-08 03:43:21+00:00
layout: post
slug: margins-of-error-in-howard-county-polling-part-1
title: Margins of error in Howard County polling, part 1
tags:
- howardcounty
---

[HoCo Rising recently highlighted](http://hocorising.blogspot.com/2010/10/ulmanintrouble-thursday-links.html) a new [poll on the Howard County executive race](http://www.marylandreporter.com/HoCo-exec-race-tightens-Ulman-v.-Kittleman.aspx). This occasioned much comment among HCR's readers on the political implications of the polling numbers. Rather than add to that discussion (fun though it may be) I want to address a different issue, namely how confident can we be that these or any other poll numbers are actually correct, or at least close to the truth? For example, the stated margin of error on the county executive polling is 5%; what does that actually mean? Also, even in the [full results](http://www.marylandreporter.com/systems/file_download.aspx?pg=1007&ver=2) no margin of error was stated for the results broken down by county council district; can we mere mortals figure that out ourselves? I thought it would be fun to explore these questions, and in the process rediscover a bit of the statistics knowledge I had lost since college. If anyone else is interested in this topic so much the better.

Let's begin: [Margin of error](http://en.wikipedia.org/wiki/Margin_of_error) is basically a measure of the likelihood that a particular polling result is within a particular range of values. For example, in this poll 48.8% of the 381 people polled said they were likely to vote for Ken Ulman, with a reported 5% margin of error. Assuming that the poll represents a true random sampling of likely Howard County voters (more on that later), that means that there's a 95% chance that the actual number of people likely to vote for Ulman is somewhere in the range from 43.8% to 53.8%, i.e., 48.8% plus or minus 5%. (Another way to state this is that 43.8% to 53.8% is the 95% confidence interval.)

Similarly, in this poll 40.9% of the 381 people polled said they were likely to vote for Trent Kittleman. Again assuming random sampling and that the margin of error is exactly the same at 5% (not quite true, as I'll discuss later, but close enough), we can conclude that there's a 95% chance that the actual number of people likely to vote for Trent Kittleman is somewhere in the range from 35.9% to 45.9% (the 95% confidence interval). Thus, for example, it's possible that the reported 49%/41% split between Ulman and Kittleman is the actual split, but it's also possible that the real split is something like 49%/43%, or 50%/40%, or even (though with less likelihood) values like 52%/39% or 47%/45%. However it's highly unlikely (less than a 5% chance) that the real split is (for example) 56%/32% or 41%/49% or other values outside the confidence intervals listed.

The poll also reported breakdowns for the Ulman/Kittleman race in each county council district. For example, per the poll 43.9% of people in Council District 1 were likely to vote for Ulman vs. 47.6% likely to vote for Kittleman. For the district-level results the pollster did not report a margin of error. Is the margin of error 5% for these results as well? No, it is not. Can we compute the margin of error ourselves? Indeed we can.

There is a standard formula for computing the margin of error in polling a relatively small sample of people from a relatively large population (in this case, polling 381 people out of a total voter population of almost two hundred thousand people). That formula assumes that the sample is truly random, that is, we have no reason to suspect that any particular voter is any more or less likely to be poled than any other voter. If the sampling isn't truly random then the formula doesn't work and the reported results, margins of error, and associated confidence intervals may be somewhat different than what's reported.

Let's assume for our purposes that we are in fact dealing with a random sample of likely Howard County voters. We can compute the margin of error for a particular polling result as follows:




  1. Start with the result for which you want to calculate the margin of error. Since we're interested in Council District 1, let's use the reported result that 43.9% of people polled in District 1 are likely to vote for Ken Ulman.


  2. Subtract the result of interest from 100%. In our example we have 100% minus 43.9%, or 56.1%.. This is the number of people who did _not_ respond that they were going to vote for Ulman. (In other words, they responded that they were going to vote for Trent Kittleman, or that they were still undecided.)


  3. Take these two numbers and divide them by 100 to convert them into numbers between 0 and 1. For our example we divide 43.9 by 100 to obtain 0.439, and divide 56.1 by 100 to obtain 0.561.


  4. Multiply the two converted numbers together. For our example we multiply 0.439 times 0.561 to obtain 0.246.


  5. Divide this new number by the total number of people polled. For this particular poll 82 people were polled in District 1, so for this example we divide 0.246 by 82 to obtain 0.003.


  6. Find the square root of the resulting number. (Recall that the square root of a number is a second number which can be multiplied by itself to obtain the original number. For example, the square root of 9 is 3, because 3 times 3 is 9.) Most modern calculators and calculator applications have a square root function; look for a key that looks somewhat like a check mark (√). (For example, users with iPhones can open the calculator app and then turn the iPhone sideways to expose the square root function.) For our example we find the square root of 0.003, which is 0.0548.


  7. Take the resulting number and multiply it by 1.96. For our example we have 0.0548 times 1.96, which gives 0.107.


  8. Finally, multiply the number just computed by 100 to convert it back to a percentage; the resulting number is the margin of error. For our example we have 0.107 times 100, which gives the margin of error as 10.7%. This means that there's a 95% chance that the true number of people in District 1 who are likely to vote for Ken Ulman is between 33.2% (43.9% minus 10.7%) and 54.6% (43.9% plus 10.7%). (In other words, the 95% confidence interval is from 33.2% to 54.6%.)



That's all there is to it: no magic, just a little math that's easily doable on a typical higher-end pocket calculator. As an exercise, try computing the margin of error on the reported result that 47.6% of voters in Council District 1 were likely to vote for Trent Kittleman. Don't worry, I'll wait.... Done yet? The answer is 10.8%, with a 95% confidence interval of 36.8% to 58.4%.

(To recap: Take 47.6% and subtract from 100% to get 52.4%, then divide by 100 to get 0.476 and 0.524 respectively. Multiply 0.476 by 0.524 to get 0.249, and then divide by 82 to get 0.00304. The square root of 0.00304 is 0.0551, which multiplied by 1.96 gives 0.108, which multiplied by 100 gives 10.8% as the margin of error. We then subtract 10.8% from 47.6% to get 36.8%, the lower end of the confidence interval, and add 10.8% to 47.6% to get 58.4%, the upper end of the confidence interval.)

To summarize: In Council District 1 if we assume that this is a truly random sample of likely voters then there's a 95% chance that between 33.2% and 54.6% of likely voters in District 1 are likely to vote for Ken Ulman, and a similar 95% chance that between 36.8% and 58.4% of likely District 1 voters are likely to vote for Trent Kittleman. These confidence intervals are very wide and have considerable overlap. As a result, whether Kittleman is really leading Ken Ulman in District 1 is an unsettled question; it's quite likely that if the poll were repeated on a different random sample of likely voters then the results would show a dead heat or a slight lead for Ulman.

Let's try computing two more margins of error, this time for the poll results in Council District 2. In that district 57.1% of people responded that they were likely to vote for Ulman and 28.6% responded likewise for Trent Kittleman, out of a sample size of 63 people. Repeating the above computation, for Ulman's result we obtain a margin of error of 12.2% and a 95% confidence interval of 44.9% to 69.3%, and for Kittleman's result we obtain a margin of error of 11.2% and a 95% confidence interval of 17.4% to 39.8%. Note that in this case the confidence intervals do not overlap, so that based on these results there's only a small chance that the race is close in District 2, and it's even more unlikely that Kittleman is actually leading Ulman in that district.

That's enough margin of error fun for one post. In part 2 I'll continue the discussion and address some of the interesting issues around margins of error, random sampling, and related topics, again using these poll results to provide examples.

