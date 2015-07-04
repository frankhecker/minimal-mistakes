---
comments: false
date: 2010-10-09 22:00:06+00:00
layout: post
slug: margins-of-error-in-howard-county-polling-part-2
title: Margins of error in Howard County polling, part 2
tags:
- howardcounty
---

In [part 1 of this post](http://blog.hecker.org/2010/10/08/margins-of-error-in-howard-county-polling-part-1/) I discussed how to calculate the margin of error on polling results, using as an example the recent [Gonzales poll on the Howard County executive race](http://www.marylandreporter.com/HoCo-exec-race-tightens-Ulman-v.-Kittleman.aspx). In this post I'll finish up the discussion with some other bits of information relating to margins of error.

(Incidentally, I don't mean to focus on margin of error to the exclusion of other issues. As wildelakemike noted in a comment to the previous post, ... polling is as much of an art as it is a science. A good pollster will set the parameters for the sample of voters to be tested based on what the pollster believes will be important in any given election. One of the most important parameters for a political poll is how the pollster selects that subset of registered voters who are most likely to vote; indeed this has become a point of contention in relation to the Gonzales poll. I decided to look at margin of error first not because it's the most important issue with this poll, but rather because it was something I once knew how to calculate and wanted to learn again, and also because I was curious about the margin of error on the council district breakdowns.)

I was easy on all of you the last post and let you try doing some mathematics without using any mathematical notation. (This is somewhat analogous to learning a song without knowing how to read music.) Now that you're hopefully able to do the calculations for the margin of error, here's the actual formula behind the calculations:

margin of error (at 95% confidence level) = $latex 1.96 \cdot \sqrt{p(1-p)/n}$

(For you verbal types out there: This is just a restatement of the calculation we did in the last post: Multiply p times (1-p), divide by n, take the square root of the resulting value--the square root sign √ is the same one I had you find on your calculator--and then multiply that value by 1.96.)

Here n is the sample size and p and (1-p) are the percentages of people in the sample responding yes and no respectively to a particular question (e.g., will you vote for Ken Ulman), with each percentage converted to a number between 0 and 1. As previously discussed, we multiply p and (1-p), divide by the sample size, take the square root, and then multiple by 1.96 to get the margin of error. In the formula above the margin of error is expressed as a number between 0 and 1; you can then multiply it by 100 if you'd like to see it as a percentage. <del>(Or if you'd like, you can just keep p and (1-p) as percentages, in which case the answer will automatically be expressed as a percentage; I didn't realize this until after I wrote the previous post.)</del>

The formula for margin of error has several interesting properties and implications:

First, the margin of error depends on the sample size: the larger the sample size, the smaller the margin of error. Since we divide by the sample size, increasing the sample size means that we're taking the square root of a smaller number, which is in turn produces a smaller value for the margin of error. (I'll spare you the proof of this last statement.) However note that in order to reduce the margin of error by a factor of 2 we have to increase the sample size by a factor of 4. This is because of the presence of the square root: Increasing the sample size by a factor of 4 corresponds to multiplying the quantity inside the square root sign by $latex \frac{1}{4}$. But the square root of $latex \frac{1}{4}$ is $latex \frac{1}{2}$(since $latex \frac{1}{2} \cdot  \frac{1}{2} =  \frac{1}{4}$) so by making the sample size four times larger we end up making the margin of error only half what it was.

This result makes reducing the margin of error in a poll more expensive than we might expect. For example, the Gonzales poll in our example had a sample size of 381 and a reported margin of error of 5%. (We'll verify that margin of error below, incidentally.) Suppose the people who commissioned the poll wanted the poll to have a margin of error of 2.5% instead. Unfortunately that would increase the sample size needed from 381 people to four times that, or 1,524 people, and that would in turn make doing the polling more expensive.

(The flip side of this is that reducing the sample size doesn't increase the margin of error by as much as you might think. In my example in the previous post discussing the Council District 1 results, the sample size was reduced by factor of four to five, from 381 to 82, while the margin of error a little more than doubled.)

The second thing to note is that the margin of error depends only on the sample size; it does _not_ depend on the size of the original population from which the sample was drawn. (Technically [this is true only if the population is sufficiently large](http://en.wikipedia.org/wiki/Margin_of_error#Effect_of_population_size) compared to the sample size; however that's the case for this and other polls at the Howard County level and above.) In other words, just as a sample size of 381 produced a margin of error of 5% for a Howard County poll, a sample size of 381 would produce a margin of error of 5% for a nationwide poll, even though the population of the United States is about a thousand times larger. This in turn means that (all other things being equal) conducting a national poll should cost roughly the same as conducting a Howard County-specific poll with the same margin of error, and vice versa. But of course there are lot more people interested in national polls than there are people interested in Howard County polls, which presumably accounts for why we don't see a lot of Howard County poll results published.

Next, recall that we compute a margin of error for a particular poll result, and two results within the same poll can have different margins of error. (For example, from the Gonzales results for Council District 2 we computed a margin of error of 12.2% for Ken Ulman's result and 11.2% for Trent Kittleman's.) This occurs because the product p times (1-p) above will vary depending on the value of p. It turns out that the product p times (1-p) (and thus the margin of error) will be largest when p = 0.5, corresponding to a polling result of 50%.

(Proving this statement is quite easy for anyone who remembers some high school algebra. Here's a hint: [Without loss of generality](http://en.wikipedia.org/wiki/Without_loss_of_generality) assume that p is between 0 and 0.5, and let x be the difference between p and 0.5, so that p = 0.5-x. Express (1-p) in terms of x as well, and then compute p times (1-p) to produce an expression involving only x. The resulting expression will be easily seen to have its maximum value when x is zero, i.e., p is 0.5.)

Because the calculated margin of error is highest when a poll result is 50%, that's the figure that pollsters publish as the reported margin of error. For example, assume a sample size of 381, same as in the Gonzales poll, and assume that 50% of the voters in that poll responded that they would vote for Ken Ulman. The margin of error according to the above formula would then be $latex 1.96 \cdot \sqrt{0.5 \cdot 0.5 / 381}$, which equals 0.0502 or 5.02%—thus the reported 5% margin of error.

However suppose that in our hypothetical poll 90% of voters said they would vote for Ken Ulman. The calculated margin of error for that result would be $latex 1.96 \cdot \sqrt{0.9 \cdot 0.1 / 381}$, which equals 0.0301 or 3.01%. This is another result that makes polling somewhat harder than we might expect: It's exactly when a race is tight and both candidates have support near 50% that the margin of error is greatest. On the other hand, if a poll shows a very lopsided result then the margin of error will be smaller and we can have more confidence in the results. (This assumes, again, that the people polled are properly chosen to represent a random sample of the population of interest.)

Finally, what about the constant value 1.96 that we use to multiply the square root? It was chosen to provide the margin of error with 95% confidence (in other words, that there's a 95% chance that the true value of a candidate's support is within the poll results plus or minus the margin of error). If you want a higher degree of confidence you can use a larger constant as a multiplier, and if you can accept a lower degree of confidence then you can use a smaller constant.

For example, if you want the calculated margin of error to apply with 99% confidence, you should use 2.58 as the multiplier instead of 1.96; for the Gonzales poll the (maximum) margin of error at the 99% confidence level is 6.6% (as opposed to 5% at the 95% confidence level). Similarly, if you want the calculated margin of error to apply with 90% confidence, you should use 1.64; for the Gonzales poll the associated (maximum) margin of error is 4.2% at the 90% confidence level.

There are some more things that could be said about margin of error, but this is a good stopping point. Perhaps in future I'll post about other aspects of political polling, but I'll try to go light on the mathematics till then.

UPDATE: I especially should avoid including mathematics if I can't get the formulas right. Contrary to what I implied above, if you want to work in percentages only, and not convert to probabilities (values between 0 and 1), then the formula to use is as follows:

margin of error (at 95% confidence level) = $latex 1.96 \cdot \sqrt{p(100-p)/n}$

Here p is the original percentage value taken directly from the poll, and the result is expressed as a percentage.

I should also note that if you just want to know the maximum margin of error then you can set p = 50%, and the above formula simplifies to the following:

max. margin of error (at 95% confidence level) = $latex 98 / \sqrt{n}$

Again, the result is expressed as a percentage. Deriving the second formula from the first is left as an exercise for the reader.

UPDATE 2:  I added a bit more explanation to the initial math formula above to make it clear that it is just a restatement in formal notation of a calculation we'd already done.

