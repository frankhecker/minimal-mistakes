---
comments: false
date: 2015-01-19 14:00:00+00:00
layout: post
slug: howard-county-government-by-the-numbers
title: Howard County government by the numbers
excerpt: As we wait to hear more about Allan Kittleman’s HoCoStat proposal, you don’t have to wait to download lots of useful county-related data at data.howardcountymd.gov.
tags:
- howardcounty
- datascience
- hocostat
- hocodata
---

_As we wait to hear more about Allan Kittleman’s HoCoStat proposal,
you don’t have to wait to download lots of useful county-related data
at data.howardcountymd.gov._

During his (ultimately successful) campaign for Howard County
Executive, one of Allan Kittleman’s key proposals was to establish
[HoCoStat][], a program to (in Kittleman’s words), “measure
... response and process times for various government functions” to
help “increase responsiveness, improve efficiency and heighten
accountability”. Kittleman’s administration is in its early days, and
nothing much has been heard yet about how and when HoCoStat might be
implemented. (Even the original HoCoStat proposal has disappeared from
[Kittleman’s web site](http://kittleman.com) as it’s being redesigned,
although the Internet archive has a [copy][].)

[HoCoStat]: http://www.baltimoresun.com/news/maryland/howard/ellicott-city/ph-ho-cf-political-notebook-0911-20140911-story.html
[copy]: https://web.archive.org/web/20141013202423/http://kittleman.com/hocostat/

But don’t despair! While we’re waiting for HoCoStat to make an
appearance there’s other Howard County data-related resources we can
explore. In particular, the [data.howardcountymd.gov][] site has a
good and growing collection of county-related datasets, many of them
tied to county maps--no surprise, since the site is maintained by the
county’s [Geographic Information System (GIS) Division][GIS]. Part of
what makes the site great is that it is _not_ just presenting
predefined maps and PDF documents, but also provides the raw data used
to create those maps.

[data.howardcountymd.gov]: https://data.howardcountymd.gov
[GIS]: http://www.howardcountymd.gov/departments.aspx?ID=4294968277

For example, suppose you’re interested in building permits issued in
Howard County. At the simplest level you can view an [interactive
map][] showing the locations for all such permits; you can click on
the icons corresponding to the issued permits and see the exact
address, date when the permit was issued, and other information.

[interactive map]: https://data.howardcountymd.gov/InteractiveMapV3.html?Workspace=IndividualLayer&Layer=general:Permits_View_Building_New&LayerName=Building%20Permits%20(New)

But let’s suppose you want to do more in-depth analysis of permits
issued: For example, which areas are seeing the most residential or
commercial permits issued? Or, what is the trend for permits issued
over time? The data.howardcountymd.gov site also lets you download the
raw data behind the map in a variety of formats, for example in [CSV
format][] for use with Excel spreadsheets or statistical software like
R, [KML format][] for use with Google Maps and Google Earth, and
several others. Armed with the relevant data files you can create your
own maps and do your own analysis, including combining the Howard
County data with data from other sources like U.S. Census data.

[CSV format]: https://data.howardcountymd.gov/geoserver/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=general:Permits_View_Building_New&outputFormat=csv
[KML format]: https://data.howardcountymd.gov/geoserver/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=general:Permits_View_Building_New&outputFormat=kml

All in all the site--which is still evolving--is a model for how
Howard County government can make useful data available to the Howard
County individual and corporate taxpayers who are ultimately paying
for county services. It would be great to see this strategy extended
to HoCoStat as well. For example, when promoting the HoCoStat proposal
Allan Kittleman pointed to (among others) Montgomery County’s
[CountyStat][] site as a model to emulate. While CountyStat is very
nice, it has the disadvantage that you can’t see the raw data behind
the performance indicators.

[countyStat]: http://www.montgomerycountymd.gov/countystat/

For example, CountyStat has some summary statistics relating to
issuance of building permits: average number of days to issue a
residential permit, commercial permits for new construction, or other
commercial permits. But there’s a lot more one might want to know: For
example, what’s the variability in the time to issue permits? Are
there some permits that for whatever reason took a really long time to
issue? How does the time to issue permits vary across the county? Are
there particular areas that (for whatever reason) are experiencing
greater or lesser delays in getting permits issued? Having the raw
data behind the indicators would permit (no pun intended) interested
parties to answer these questions, from commercial developers doing
large-scale projects down to a small contractor building a single
home.

As I wrote in my previous [post on Howard County government data
initiatives][post], providing unfettered access to raw data (subject
to reasonable concerns relating to individual privacy and corporate
confidentiality) is key to making government data useful: It allows
the private and civic sectors to exercise their own creativity in
using that data, rather than trying to have government anticipate
every possible use for it, and also lets the private and civic sectors
hold government accountable by enabling them to do their own
independent analyses of government data. It’s great to see what Howard
County government (and the GIS Division in particular) has been and is
doing to make useful data generally available. I hope that as the
Kittleman administration gets down to work and the HoCoStat program is
implemented that that spirit of openness and commitment to serve
citizens through government data continues.

[post]: /2014/11/04/making-howard-county-government-data-of-value-to-us-all/
