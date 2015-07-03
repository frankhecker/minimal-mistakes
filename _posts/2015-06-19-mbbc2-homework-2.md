---
layout: post
title: Homework set 2 from Mathematical Biostatistics Boot Camp 2
date: 2015-05-19 12:00:00+00:00
slug: mbbc2-homework-2
tags:
- data
excerpt: "This set of homework problems from the Mathematical Biostatistics
Boot Camp (part 2) illustrates the use of mathematical notation in a post."
use_math: true
---

<section id="table-of-contents" class="toc">
  <header>
    <h3>Overview</h3>
  </header>
<div id="drawer" markdown="1">
*  Auto generated table of contents
{:toc}
</div>
</section><!-- /#table-of-contents -->

## Question 1

Researchers are interested in estimating the natural log of the
proportion of people in the population with hypertension. In a random
sample of $n$ subjects, let $X$ be the number with hypertension.

Create a confidence interval for the natural log of the proportion of
people with hypertension. Assume that $n$ is very large.

* $\log(\hat{p}) \pm z_{1−\alpha/2} \sqrt{\hat{p}(1−\hat{p})/n}$
* $\log(\hat{p}) \pm z_{1−\alpha/2} \sqrt{(1−\hat{p})/(\hat{p}n)}$
* $\log(\hat{p} \pm z_{1−\alpha/2} \sqrt{\hat{p}(1−\hat{p})/n})$ where
log acts componentwise
* The answer cannot be determined from the information given.

### Answer

This is a binomial proportion problem. Our estimate of the
population parameter $p$ is $\hat{p} = X/n$, and the standard error
for $\hat{p}$ is $\sqrt{\hat{p}(1 - \hat{p})/n}$.

For very large $n$ the statistic

$$\frac{\hat{p} - p}{\sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}}$$

can be approximated by the standard normal distribution $N(0, 1)$.
By the  delta rule we then have that the statistic

$$\frac{f(\hat{p}) - f(p)}{f'(\hat{p}) \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}}$$

is also approximately $N(0, 1)$ for very large $n$.

In this case $f(x) = \log x$ and $f'(x) = 1/x$, so the statistic

$$\frac{\log(\hat{p}) - \log(p)}{\frac{1}{\hat{p}} \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}}
= \frac{\log(\hat{p}) - \log(p)}{\sqrt{\frac{1 - \hat{p}}{\hat{p} n}}}$$

is approximately $N(0, 1)$ for very large $n$.

A $(100 - \alpha)$% confidence interval for $\log p$ is then

$$\log \hat{p} \pm z_{1-\alpha/2} \sqrt{\frac{\hat{p}(1−\hat{p})}{ \hat{p} n}}$$

## Question 2

If the odds are 4 to 1 (i.e., just 4) of the NFL Ravens losing, what
is the implied probability that they win?

* 0.80
* 0.50
* 0.40
* 0.60
* 0.20
* 0.10
* 0.70
* 0.30

### Answer

If $p$ is the probability of an event then the odds for that event
are $p/(1-p)$. If the odds of the Ravens losing are 4 then we have
$4 = p/(1-p)$ or $4 - 4p = p$ so that $p = 4/5 = 0.80$. The
probability of the Ravens winning is thus $1 - 0.8 = 0.2$.

## Question 3

In a randomly sampled survey of self-reported stress levels from two
occupations, the following data were obtained where there were 100 in
each group

    High Stress    Low Stress
    Professor              70
    Lion Tamer             15

What is the value of the score $Z$ test statistic for evaluating
equality of the two proportions of high stress?

* Around 8 (or -8, depending on which you subtract first)
* Around 5 (or -5, depending on which you subtract first)
* Around 4 (or -4, depending on which you subtract first)
* Around 3 (or -3, depending on which you subtract first)

### Answer

First, since there were 100 people in each group the actual table
of results looks like

                  High Stress    Low Stress
    Professor              30            70
    Lion Tamer             85            15

The null hypothesis is $H_0 : p_1 = p_2$. The score test statistic
for the hypothesis test is

$$TS = \frac{\hat{p_1} -
\hat{p_2}}{\sqrt{\hat{p}(1-\hat{p})(\frac{1}{n_1} + \frac{1}{n_2})}}$$

where $\hat{p} = (X_1 + X_2)/(n_1 + n_2) = (30 + 85) / (100 + 100)
= 115/200 = 0.575$. The test statistic is then

$$TS = \frac{0.30 - 0.85}{\sqrt{0.575 (1 - 0.575) (\frac{1}{100} + \frac{1}{100})}}
\approx -7.87$$

So the test statistic is around -8 (or 8 if we had reversed the order
of subtraction).

## Question 4

Consider the following data recording case status relative to an
environmental exposure

               Case    Control
    Exposed      45         21
    Unexposed    15         52

What would be the estimated asymptotic standard error for the log odds
ratio for this data?

* Around 0.4
* Around 0.2
* Around 1.2
* Around 1.5

### Answer

We have $n_{11} = 45$, $n_{12} = 21$, $n_{21} = 15$, and
$n_{22} = 52$. The standard error for the log odds ratio is

$$\sqrt{\frac{1}{n_{11}} + \frac{1}{n_{12}} + \frac{1}{n_{21}} + \frac{1}{n_{22}}}
= \sqrt{\frac{1}{45} + \frac{1}{21} + \frac{1}{15} + \frac{1}{52}}
\approx 0.4$$

## Question 5

If $x ∼ \mathrm{Binomial}(n,p)$ and a $\mathrm{Beta}(2,2)$ prior is
placed on $p$, what is the posterior mean for $p$?

* $(x+2)/(n+4)$
* $(x+1)/(n+1)$
* $(x+2)/(n+2)$
* $x/n$

### Answer

The mean of a beta density with parameter $\alpha$ and $\beta$ is
$\alpha/(\alpha + \beta)$. In this case $\alpha = \beta = 24$ so the
prior mean is $2/(2+2) = 0.5$.

The posterior probability is proportional
to $p^x (1 - p)^{n-x} \times p^{\alpha-1} (1 - p)^{\beta-1} =
p^{x+\alpha-1} (1 - p)^{n-x+\beta-1}$. This is also a beta density,
with parameters $\tilde{\alpha} = x + \alpha$ and $\tilde{\beta} =
n - x + \beta$.

The posterior mean is then

$$E[p \,|\, x] = \frac{\tilde{\alpha}}{\tilde{\alpha} + \tilde{\beta}}
= \frac{x + \alpha}{x + \alpha + n - x + \beta}
= \frac{x + \alpha}{n + \alpha + \beta} = \frac{x + 2}{n + 4}$$

## Question 6

Researchers conducted a blind taste test of Coke versus Pepsi. Each of
four people was asked which of two blinded drinks given in random
order they preferred. The data was such that 3 of the 4 people chose
Coke. Assuming that this sample is representative, report a P-value
for a test of the hypothesis that Coke is preferred to Pepsi using a
one-sided exact test.

* Around 0.4
* Around 0.3
* Around 0.1
* Around 0.2

### Answer

The null hypothesis is that Coke and Pepsi are preferred equally,
i.e., that $p = 0.5$ where $p$ is the proportion of people preferring
Coke. In this case we had $x = 3$ people prefer Coke out of $n = 4$
people in all.

Assuming the null hypothesis $H_0 : p = 0.5$ we can calculate an exact
p-value by looking at

$$P(X_A \ge 3 \,|\, p = 0.5)
= \sum_{x=3}^4 \binom{4}{x} 0.5^x 0.5^{4-x}
= \binom{4}{3} 0.5^4 + \binom{4}{4} 0.5^4
= 4 \cdot 0.625 + 1 \cdot 0.625 = 0.3125$$

So the exact p-value is about 0.3.
