---
comments: false
date: 2015-03-21 17:00:35+00:00
layout: post
slug: how-politicians-see-howard-county
title: How politicians see Howard County
tags:
- howardcounty
- politics
- hocodata
---

<figure markdown="1">
[![Howard County, Maryland precinct cartogram](https://hecker.files.wordpress.com/2015/03/hocomd-precinct-cartogram.png?w=300)](https://hecker.files.wordpress.com/2015/03/hocomd-precinct-cartogram.png)
<figcaption>Howard County, Maryland precinct cartogram. Precinct area is proportional to the number of registered voters as of the 2014 general election. Click for higher-resolution version.</figcaption>
</figure>

_tl;dr: The map of Howard County looks very different if you're looking for votes. Cartograms help you see like a politician._

There are 118 election precincts in Howard County, Maryland, varying both in geographic area and in the number of voters they contain. Precincts in western Howard County tend to be larger, because the population density in western Howard is lower. Precincts in more densely populated areas of the county (including Columbia) tend to be smaller. If we’re interested in how voters behave across the county a conventional map can be misleading because the larger area of western Howard precincts causes us to overrate the importance and impact of those precincts. (This is similar to the US electoral map being visually dominated by large states like Montana, Wyoming, and the Dakotas that have fewer voters than small states like Connecticut and Rhode Island.)

The figure above is actually a map of Howard County electoral precincts, not as they exist in reality but as they might appear if their size were proportional to the number of voters they contain. More specifically, this is a _[cartogram](http://en.wikipedia.org/wiki/Cartogram)_ in which the precinct map is distorted to make precinct areas proportional to the number of registered voters in each precinct as of the 2014 general election.

<figure markdown="1">
[![Allan Kittleman's victory margins by precinct.](https://hecker.files.wordpress.com/2015/03/kittleman-2014-vote-margins-choropleth.png?w=300)](https://hecker.files.wordpress.com/2015/03/kittleman-2014-vote-margins-choropleth.png)
<figcaption>Conventional map of Allan Kittleman's election-day margin of victory in each precinct in the 2014 general election for Howard County Executive. Click for a higher-resolution version.</figcaption>
</figure>

Let’s look at a real-life example of how cartograms can present a more accurate picture of election results. The next map shows Republican Allan Kittleman's election-day margin of victory in each precinct in his 2014 race for Howard County Executive against Democrat Courtney Watson. (The margin of victory is expressed as votes per precinct, not as a percentage. Thus a value of 100 means that Kittleman received 100 more votes in a precinct on election day than Watson. The map does not include absentee and early voting results because they are not reported per precinct.) 

Each precinct is colored from bright red (large Kittleman margin) to bright blue (large Watson margin) and all shades in between. (Incidentally, this type of colored map is known as a _[choropleth map](http://en.wikipedia.org/wiki/Choropleth_map)_.) Since precincts in western Howard County are both large and heavily Republican the conventional map exaggerates the extent of Kittleman’s election-day victory margin over Watson. 

<figure markdown="1">
[![Cartogram of Allan Kittleman victory margins by precinct](https://hecker.files.wordpress.com/2015/03/kittleman-2014-vote-margins-cartogram.png?w=300)](https://hecker.files.wordpress.com/2015/03/kittleman-2014-vote-margins-cartogram.png)
<figcaption>Cartogram of Allan Kittleman's election-day margin of victory in each precinct in the 2014 general election for Howard County Executive. Click for a higher resolution version.</figcaption>
</figure>

To address this perceptual problem we can instead represent the exact same data in the form of a cartogram, as seen in the next map. Here the precincts of western Howard shrink in size to reflect their true contribution to the overall registered voter population. In particular Howard County Council District 5 now appears to be roughly equal in size to the other districts--which makes sense since county council redistricting had as one of its goals making the districts contain roughly equal number of voters. On this map Kittleman’s margin of victory still appears to be significant, but we can better identify precincts (like those in Columbia) in which Watson polled strongly on election day.

Cartograms can be used in place of conventional maps in any context in which each geographic subdivision has associated with it some common variable of interest. For example, suppose we want to look at elementary school overcrowding in Howard County. Looking at a conventional map (like the [elementary school attendance area map](http://www.hcpss.org/f/schoolplanning/map-es201415.pdf) provided by the Howard County Public School System) we might say, “Gee, there are a lot of elementary schools in eastern Howard. How could they possibly be overcrowded?” It would make much more sense to show school attendance areas as a cartogram in which the size of each attendance area was proportional to the number of students in that area. Each of the attendance areas could then be colored according to the extent of overcrowding at that school.

This sounds like a possible future project for me if and when I have time. Or if anyone out there would like to try this yourself, I’ve provided more detailed information on how to create maps like those shown above. See my three-part series “Creating Howard County Precinct Cartograms Based on 2014 Registered Voters” ([part 1](http://rpubs.com/frankhecker/63528), [part 2](http://rpubs.com/frankhecker/63529), and [part 3](http://rpubs.com/frankhecker/64539)) and my second three-part series “Allan Kittleman’s Election-Day Victory Margins in the Howard County 2014 General Election” ([part 1](http://rpubs.com/frankhecker/60538), [part 2](http://rpubs.com/frankhecker/63458), and [part 3](http://rpubs.com/frankhecker/63561)).
