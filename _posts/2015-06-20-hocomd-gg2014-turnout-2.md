---
layout: post
title: "Howard County Turnout in the 2014 General Election, Part 2"
excerpt: "How did turnout in the 2014 general election affect the race for Howard County Executive? In part 2 of this series I look at precinct-level turnout."
date: 2015-06-20 12:00:00+00:00
slug: hocomd-gg2014-turnout-2
title: Howard County general election turnout, part 2
tags:
- howardcounty
- data
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

## Introduction

In the 2014 gubernatorial general election in Howard County, Maryland,
a subject of interest was relative turnout for Republican
vs. Democratic voters, with higher Republican turnout seen as the key
for Allan Kittleman’s election as County Executive (not to mention
other Republican victories from Larry Hogan on down). A related
question is whether turnout was depressed in certain Howard County
council districts due to lack of opposition to the incumbent council
members. (In particular, in districts 3 and 4 Jen Terrasa and Mary-Kay
Sigaty respectively had no declared Republican opponents.)

In part 2 of this series I do some basic exploration of the turnout
data, using a version of the statewide precinct-level dataset created
in part 1.

## Load packages

For this analysis I use the [R statistical package][] run from the
[RStudio][] development environment, along with the [dplyr][] and
[tidyr][] packages to do data manipulation and the [ggplot2][] package
to create plots.

[R statistical package]: http://r-project.org
[RStudio]: http://www.rstudio.com/products/rstudio
[dplyr]: http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html
[tidyr]: http://cran.rstudio.com/web/packages/tidyr/
[ggplot2]: http://cran.rstudio.com/web/packages/ggplot2/

{% highlight r %}
library("dplyr", warn.conflicts = FALSE)
library("tidyr")
library("ggplot2")
{% endhighlight %}

## Data sources

The Maryland State Board of Elections has published a number of
turnout-related reports (in both PDF and Microsoft Excel format) as
part of its [2014 general election reports][md-ge2014]. For this
analysis I use [my version][] of the [state-wide per-precinct turnout
statistics][md-turnout-precinct] [Excel], as found in my [hocodata
GitHub repository][].

[my version]: https://raw.githubusercontent.com/frankhecker/hocodata/master/datasets/gg14-turnout-by-party-by-precinct.csv
[md-turnout-precinct]: http://www.elections.state.md.us/elections/2014/turnout/general/GG14_Turnout_by_party_by_precinct.xlsx
[md-ge2014]: http://www.elections.state.md.us/elections/2014/
[hocodata GitHub repository]: https://github.com/frankhecker/hocodata/

{% highlight r %}
download.file(
"https://raw.githubusercontent.com/frankhecker/hocodata/master/datasets/gg14-turnout-by-party-by-precinct.csv",
              "gg14-turnout-by-party-by-precinct.csv",
              method = "curl")
{% endhighlight %}

I then load the CSV file into the dataframe `precinct_turnout`.

{% highlight r %}
precinct_turnout <- read.csv("gg14-turnout-by-party-by-precinct.csv")
{% endhighlight %}

## Exploring turnout by party

As a first step I look at turnout statistics for the entire state of
Maryland by party, creating a new dataframe `party_turnout` as
follows:

* Group all rows in the data frame by party
* Create new variables `Polls`, etc., to total the number of
  people casting votes at the polls, etc.
* Create new variables `Actual_Voters` and `Turnout` to hold the
  the total numbers of people voting and those totals as a percentage
  of eligible voters.

{% highlight r %}
party_turnout <- precinct_turnout %>%
    group_by(Party) %>%
    summarise(Polls = sum(Polls),
              Early_Voting = sum(Early_Voting),
              Absentee = sum(Absentee),
              Provisional = sum(Provisional),
              Eligible_Voters = sum(Eligible_Voters)) %>%
    mutate(Actual_Voters = Polls + Early_Voting + Absentee + Provisional,
           Turnout = round(100 * Actual_Voters / Eligible_Voters, 1))
print.data.frame(party_turnout)
{% endhighlight %}

{% highlight text %}
##           Party  Polls Early_Voting Absentee Provisional Eligible_Voters
## 1      Democrat 711724       189188    30866       20962         2036281
## 2         Green   2172          319      116         100            8445
## 3   Libertarian   4372          589      168         200           14477
## 4 Other Parties   9329         2200      966         248           34470
## 5    Republican 445609        87039    16963        7879          949564
## 6  Unaffiliated 177724        28330     5572        5673          658428
##   Actual_Voters Turnout
## 1        952740    46.8
## 2          2707    32.1
## 3          5329    36.8
## 4         12743    37.0
## 5        557490    58.7
## 6        217299    33.0
{% endhighlight %}

The total number of voters who are members of the smaller parties
(Greens, Libertarians, and other parties) is very small compared to
the number of unaffiliated voters, much less the number of Democrats
and Republicans. Also, the turnout levels for the smaller parties
(32.1%, 36.8%, and
37% respectively) are more similar to the
turnout for unaffiliated voters (33%) than
to the turnout for Democrats (46.8%) or
Republicans (58.7%). I therefore recreate the
`party_turnout` dataframe, this time assigning precinct-level data for
the smaller parties into the “Other” category along with unaffiliated
voters, and recalculating the turnout statistics:

{% highlight r %}
party_categories <- c("Democrat" = "Democrat",
                      "Green" = "Other",
                      "Libertarian" = "Other",
                      "Other Parties" = "Other",
                      "Republican" = "Republican",
                      "Unaffiliated" = "Other")
party_turnout <- precinct_turnout %>%
    mutate(Party = party_categories[Party]) %>%
    group_by(Party) %>%
    summarise(Polls = sum(Polls),
              Early_Voting = sum(Early_Voting),
              Absentee = sum(Absentee),
              Provisional = sum(Provisional),
              Eligible_Voters = sum(Eligible_Voters)) %>%
    mutate(Actual_Voters = Polls + Early_Voting + Absentee + Provisional,
           Turnout = round(100 * Actual_Voters / Eligible_Voters, 1))
print.data.frame(party_turnout)
{% endhighlight %}

{% highlight text %}
##        Party  Polls Early_Voting Absentee Provisional Eligible_Voters
## 1   Democrat 711724       189188    30866       20962         2036281
## 2      Other 193597        31438     6822        6221          715820
## 3 Republican 445609        87039    16963        7879          949564
##   Actual_Voters Turnout
## 1        952740    46.8
## 2        238078    33.3
## 3        557490    58.7
{% endhighlight %}

I then create a simple bar chart showing statewide turnout percentages
for Democrats, Republicans, and other voters:

{% highlight r %}
ggplot(party_turnout, aes(x = Party, y = Turnout)) +
    geom_bar(stat = "identity")
{% endhighlight %}

![Turnout by Party]({{ site.url }}/images/2015-06-20-hocomd-gg2014-turnout-2-figure-1.png) 

There were clearly significant differences in turnout among the three
groups of voters, with Republicans turnout out at the highest rate. Of
course there were many more registered Democrats
(2036281) than Republicans
(949564) or other voters
(715820). Howver due to the differences
in turnout the Democratic edge among those actually voting was
smaller, as shown in the following graph.

{% highlight r %}
ggplot(party_turnout, aes(x = Party, y = Actual_Voters)) +
    geom_bar(stat = "identity")
{% endhighlight %}

![Actual Voter Turnout]({{ site.url }}/images/2015-06-20-hocomd-gg2014-turnout-2-figure-2.png) 

The total number of Democrats actually voting
(952740) was still larger than Republicans
and other voters combined (557490 +
238078 =
795568)
though.

## Appendix

I used the following R environment in doing the analysis for this
example:

{% highlight r %}
sessionInfo()
{% endhighlight %}

{% highlight text %}
## R version 3.1.3 (2015-03-09)
## Platform: x86_64-apple-darwin13.4.0 (64-bit)
## Running under: OS X 10.10.3 (Yosemite)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] ggplot2_1.0.1  tidyr_0.1      dplyr_0.4.0    knitr_1.7     
## [5] RCurl_1.95-4.3 bitops_1.0-6  
## 
## loaded via a namespace (and not attached):
##  [1] assertthat_0.1   colorspace_1.2-4 DBI_0.3.1        digest_0.6.4    
##  [5] evaluate_0.5.5   formatR_1.0      grid_3.1.3       gtable_0.1.2    
##  [9] htmltools_0.2.6  labeling_0.3     lazyeval_0.1.10  magrittr_1.0.1  
## [13] MASS_7.3-39      munsell_0.4.2    parallel_3.1.3   plyr_1.8.1      
## [17] proto_0.3-10     Rcpp_0.11.5      reshape2_1.4     rmarkdown_0.6.1 
## [21] scales_0.2.4     stringi_0.4-1    stringr_1.0.0    tools_3.1.3     
## [25] yaml_2.1.13
{% endhighlight %}

You can find the source code for this analysis and others at my
[HoCoData repository on GitHub][hocodata]. This document and its
source code are available for unrestricted use, distribution and
modification under the terms of the Creative Commons [CC0 1.0
Universal (CC0 1.0) Public Domain Dedication][CC0].  Stated more
simply, you’re free to do whatever you’d like with it.

[hocodata]: https://github.com/frankhecker/hocodata
[CC0]: https://creativecommons.org/publicdomain/zero/1.0/
