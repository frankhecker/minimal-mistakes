---
comments: false
date: 2010-11-29 23:46:50+00:00
layout: post
slug: howard-county-population-growth-1950-2009
title: Howard County population growth, 1950-2009
tags:
- howardcounty
---

In doing research for my series on the [history of Howard County Council redistricting](http://blog.hecker.org/2010/11/28/a-history-of-howard-county-council-redistricting-part-1/) one thing that became apparent was the major impact that the founding of Columbia had on the population growth of Howard County. That prompted me to put together a [spreadsheet of Howard County population from 1950 through 2009](https://spreadsheets.google.com/ccc?key=0AoeAIApSILw_dHdwZEs3ZW9BUXpZRzhoTDZZRUJoc3c&hl=en) from U.S. census data. The data is also available as a [text file](http://hecker.org/public/hoco-population-1950-2009.txt) suitable for use with the R statistical package.1

The best way to get a feel for Howard County's growth is to graph the data. The following plot shows Howard County's population (solid line) compared to that of neighboring Frederick County (dashed line), another Maryland suburban county that experienced significant growth in the second half of the twentieth century.2

[![](http://hecker.files.wordpress.com/2010/11/hoco-population-1950-2009.png)](http://hecker.files.wordpress.com/2010/11/hoco-population-1950-2009.png)

While the population of Frederick County increased almost four-fold over the past sixty years (from 62,287 to 227,980), the population of Howard County grew more than twelve-fold (from 23,119 to 281,884), spurred by the impact of Columbia.

The spreadsheet also gives year-on-year increases in population for Howard County. Note that in the early 1970s Howard County was experiencing over 10% population growth per year, a rate which if continued would have doubled Howard's population every seven years. As it was Howard County grew over 43% from 1970 to 1974 (61,911 to 88,800). We'll see the political implications of this increase in population in part 2 of the history of Howard County Council redistricting.


* * *



1. Population data is from the following sources:




  * [Maryland: Population of Counties by Decennial Census: 1900 to 1990](http://www.census.gov/population/cencounts/md190090.txt)


  * [Preliminary Estimates of the Intercensal Population of Counties 1970-1979](http://www.census.gov/popest/archives/pre-1980/e7079co.txt)


  * [Intercensal Estimates of the Resident Population of States and Counties 1980-1989](http://www.census.gov/popest/archives/1980s/e8089co.txt)


  * [Estimated population of Maryland counties 1990-1999](http://www.census.gov/popest/archives/1990s/co-99-08/99C8_24.txt) from [County Population Estimates and Demographic Components of Population Change: Annual Time Series, July 1, 1990 to July 1, 1999](http://www.census.gov/popest/archives/1990s/CO-99-08.html)  (note that the estimates are in reverse order from 1999 down to 1990, followed by the actual census figure for 1990; see the [documentation on the file layout](http://www.census.gov/popest/archives/1990s/co-99-08/st8lay.txt))


  * [Annual Estimates of the Resident Population for Counties of Maryland: April 1, 2000 to July 1, 2009](http://www.census.gov/popest/counties/tables/CO-EST2009-01-24.csv) (see line 3 of the file for the format)


Figures for census years (1950, 1960, etc.) are actual census values. Figures for all other years are estimated. Note that the Census Bureau apparently did not produce intercensal population estimates for counties prior to the 1970s.↩

2. This plot was produced as follows:
[sourcecode light="true"]
> hocopop <- read.table("hoco-population-1950-2009.txt", header=TRUE)
> plot(hocopop$Year, hocopop$Howard, type="l", ylim=c(0, 300000))
> points(hocopop$Year, hocopop$Frederick, type="l", lty=2)
> 
[/sourcecode]
(The `type="l"` parameter plots a line instead of points, and the `lty=2` parameter produces a dashed rather than solid line.)↩


