---
comments: false
date: 2015-05-11 12:00:00+00:00
layout: post
slug: get-your-county-government-data-at-the-openhoward-portal
title: Get your county government data at the OpenHoward portal
excerpt: Howard County government ups its game in providing data with a new web site opendata.howardcountymd.gov. Next stop, HoCoStat?
tags:
- howardcounty
- hocodata
- openhoward
- hocostat
- socrata
---

_tl;dr: Howard County government ups its game in providing data with a new web site opendata.howardcountymd.gov. Next stop, HoCoStat?_

I’ve [previously
written](/2015/01/19/howard-county-government-by-the-numbers/) about
Howard County’s initial foray into publishing government data, the
[data.howardcountymd.gov](https://data.howardcountymd.gov) web site
created by the Howard County GIS division. As [announced by the
county](http://www.howardcountymd.gov/News050815.htm) and [reported by
Amanda Yeager at the Baltimore
Sun](http://www.baltimoresun.com/news/maryland/howard/ellicott-city/ph-ho-cf-open-howard-story.html),
Howard County has launched a new site
[opendata.howardcountymd.gov](https://opendata.howardcountymd.gov) to
provide access to government data. This new site, also known as the
OpenHoward portal[^1], can be considered as a concrete implementation of
open data practices mandated by the Howard County Council (see
[Council Bill
32-2014](https://apps.howardcountymd.gov/olis/LegislationDetail.aspx?LegislationID=839))
and as a down payment on County Executive Allan Kittleman’s [campaign
promise](https://web.archive.org/web/20141013202423/http://kittleman.com/hocostat/)
to create an automated system (“HoCoStat”) to “help government
increase responsiveness, improve efficiency and heighten
accountability”.

But enough marketing speak, what is this thing really? Briefly, the
opendata.howardcountymd.gov site, like the original
data.howardcountymd.gov site, is a web site that allows you to view
and download various datasets relating to Howard County government
activities and Howard County in general. However in other respects the
new OpenHoward site goes well beyond what the previous site
offers. First, the new site includes many types of data not previously
available on the older site, including (to take but two examples)
datasets relating to county budgets and police reports.

Second, the new site has a search facility that is extremely handy
when trying to find data and datasets of interest. For example, since
the renovation of Merriweather Post Pavilion has been in the news I
decided to [search for
“Merriweather”](https://opendata.howardcountymd.gov/en/browse?q=+merriweather). The
search returned (among other things) datasets and records relating to
police reports, reports from the [Tell
HoCo](http://www.howardcountymd.gov/tellhoco.htm) web site and mobile
app used to report potholes, broken street lamps, and other problems,
and a list of payments the county made relating to Wine in the
Woods. I also tried searching for the name of the street I live on,
and got a similar mix of results. I predict that this will be a
popular use of the site.

Finally, the new site offers an [application programming
interface](https://opendata.howardcountymd.gov/developers) (API) by
which independent developers can create applications that access the
data in real-time. Most people won’t care about this, but (among other
things) it offers local Howard County businesses and motivated
individuals a way to create their own applications to add value to the
underlying county data.

The opendata.howardcountymd.gov site was not built from scratch, but
was instead deployed using the online service provided by
[Socrata](http://www.socrata.com), a Seattle-based private company
specializing in helping governments to implement open data
initiatives. Socrata’s is a “cloud-based” or “software as a service”
(SaaS) offering, meaning that Howard County did not purchase software
and hardware to run the site, but instead pays a ongoing subscription
fee to host its data on Socrata’s servers running Socrata’s
software. We’ll see in future exactly how much Howard County is paying
Socrata for this service (since presumably it will show up in the
“Payments to Vendors” database), but based on an [independent analysis
of Socrata pricing](https://thomaslevine.com/!/socrata-products/) it’s
likely that the cost to the county is on the order of several thousand
dollars per month.

That may sound like a lot, but you have to compare it to the
fully-burdened cost (i.e., including salaries, heath care, and
pensions) of having Howard County employees build the site, or the
cost of having a contractor develop a custom site.[^2] Socrata appears
to be a market leader in the open data space, is [growing
rapidly](http://www.socrata.com/newsroom-article/socrata-continues-to-catapult-data-driven-government-forward-with-robust-q1-2015-results/),
and has a [coherent
vision](http://www.govtech.com/data/Open-Data-Goes-Mainstream-Accelerates-Success-for-Socrata.html)
for future product offerings. Socrata also has other customers in
Maryland at both the state and local levels, with Socrata powering the
[Open Data Portal](https://data.maryland.gov) used in the
[StateStat](http://www.statestat.maryland.gov) system, as well as open
data portals and related applications for [Baltimore
City](https://data.baltimorecity.gov) and [Montgomery
County](https://data.montgomerycountymd.gov).[^3]

In general I think going with Socrata was a good decision for the
county. The site looks pretty functional from the point of view of
both beginners and more advanced users, Socrata appears to have good
mechanisms for getting new datasets into their system, and the
provision of an API is a plus for advanced usage. Plus Socrata also
has a separate [Open Performance
(GovStat)](http://www.socrata.com/products/open-performance-govstat/)
product that looks as if it would be a good base on which to build the
HoCoStat system.

In comparison to the pluses my concerns about OpenHoward thus far are
relatively minor. First, the site could use more datasets, and more
data in existing datasets. (For example, there’s no police or fire and
rescue data for 2015.) However the press release is upfront about this
being a “beta” site at present, so presumably more data is on the
way. One major potential lack is data on Howard County schools; I
presume the Board of Education and Superintendent Foose would need to
cooperate to get that done, and it’s an open question as to whether
such cooperation will be forthcoming.

Second, I think the conditions for access to the site and its data
need to be spelled out a bit more clearly. The original County Council
bill CB32-2014 stated that “All accessible data ... shall be made
available without copyright, patent, trademark, or trade secret, or
similar regulation other than reasonable privacy, security, and
privilege restrictions.” In other words, all data published on the
site is presumably in the public domain with no restrictions on its
use. However it would be nice if that could be spelled out more
explicitly. The terms of use for the API are somewhat unclear as well:
There’s a basic level of API access available by default, and more
intensive usage is possible by registering and getting an “application
token”. These are both provided at no charge, but it’s not clear
whether there is some level or type of API access that would incur a
charge to the application developer or to application users. Again,
this is worth spelling out.

Finally, what will happen to the existing data.howardcountymd.gov
site? Will its data be folded into the OpenHoward portal and the
original site decommissioned, or will it continue to operate? I
confess to a personal interest in this, since I’ve previously
published [analyses](http://rpubs.com/frankhecker/) that pull datasets
from the older site, and if the old site goes away I’d like the web
links I used to be redirected to the new site. (UPDATE: According to a
tweet from Joseph Murano, the original data.howardcountymd.gov site
will continue to operate, not least because it’s used by some internal
applications.)

Leaving these relatively minor concerns aside, overall the launch of
the OpenHoward portal is a very welcome event, and I’m looking forward
to see how it and the larger HoCoStat initiatives evolve. Our thanks
should go to all those who made this possible, including to Greg Fox,
Jen Terrasa, and the other members of the Howard County Council for
pushing Howard County to provide open accessible data, to Allan
Kittleman for his work thus far to fulfill his campaign pledges around
open access, and, most importantly, to those who did the real work,
Chris Merdon’s staff in the Department of Technology and Communication
Services.

* * *

[^1]: Although both the county press release and the Baltimore Sun article reference the OpenHoward name, the actual web site doesn’t use that name. Maybe they’re still finalizing the logo and related branding?

[^2]: Based on the figures on page 190 of the [Howard County FY2016 proposed operating budget](http://www.howardcountymd.gov/Budget2016.pdf) [PDF], personnel costs for the Department of Technology and Communication Services (the county’s IT department) appear to be almost $100,000 per employee on average. So a hypothetical subscription fee of $8,000 a month would be equivalent to hiring one new employee.

[^3]: The Maryland connection goes beyond what I mentioned: [Beth Blauer](https://www.linkedin.com/pub/beth-blauer/53/838/10), who headed up the Maryland StateStat project, subsequently worked at Socrata for a couple of years before leaving to head up the [Center for Government Excellence](http://hub.jhu.edu/2015/04/20/what-works-cities) at John Hopkins University.
