---
comments: false
date: 2015-03-01 12:00:17+00:00
layout: post
slug: useful-datasets-for-howard-county-election-analysis
title: Useful datasets for Howard County election analysis
tags:
- howardcounty
- politics
- datascience
- hocodata
---

_tl;dr: I release two useful Howard County election datasets in preparation for future posts._

In the coming days and weeks I’ll be posting some analyses of Howard County election results. Unfortunately the data released by the [Howard County Board of Elections](http://www.howardcountymd.gov/Departments.aspx?id=4294968268) and the [Maryland State Board of Elections](http://www.elections.state.md.us) is not always in the most useful form for analysis. In particular I was looking for per-precinct turnout statistics for the 2014 general election in Howard County, along with some way to match up precincts with the county council district of which they’re a part. That data is available in the [2014 general election results per precinct/district](http://www.howardcountymd.gov/WorkArea/linkit.aspx?LinkIdentifier=id&ItemID=6442477038&libID=6442477030) published by the Howard County Board of Elections, but unfortunately that document is a PDF document.

PDF files are great for reading by humans, but lousy for reading by machines. They violate guideline 8 in the [Open Data Policy Guidelines](http://sunlightfoundation.com/opendataguidelines/) published by the [Sunlight Foundation](http://sunlightfoundation.com/about/): 

<blockquote>For maximal access, data must be released in formats that lend themselves to easy and efficient reuse via technology. … This means releasing information in open formats (or “open standards”), in machine-readable formats, that are structured (or machine-processable) appropriately. … While formats such as HTML and PDF are easily opened for most computer users, these formats are difficult to convert the information to new uses.</blockquote>



Since the data I wanted wasn’t in a format I could use, I manually extracted the data from the PDF document and converted it into a useful format (Comma Separated Value or CSV format) myself. Then since someone else might find a use for them, I published the files online in a [datasets area](https://github.com/frankhecker/hocodata/tree/master/datasets) of my [Github hocodata repository](https://github.com/frankhecker/hocodata). The first two files are as follows:




  * [hocomd-2014-precinct-council.csv](https://raw.githubusercontent.com/frankhecker/hocodata/master/datasets/hocomd-2014-precinct-council.csv). This dataset maps the 118 Howard County election precincts to the county council districts in which those precincts are included.

  * [hocomd-2014-general-election-turnout.csv](https://raw.githubusercontent.com/frankhecker/hocodata/master/datasets/hocomd-2014-general-election-turnout-by-precinct.csv). This dataset contains turnout statistics for each of the 118 Howard County precincts in the 2014 general election, including the number of registered voters and ballots cast in each precinct on election day.



Stay tuned for some interesting ways to use this data.

