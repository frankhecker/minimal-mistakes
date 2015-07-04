---
comments: false
date: 2005-06-14 12:00:47+00:00
layout: post
slug: firefox-and-innovation
title: Firefox and innovation
tags:
- mozilla
- claytonchristensen
- disruptiveinnovation
- firefox
---

In a [previous post](http://blog.hecker.org/2005/02/26/jwz-considered-disruptive/) I discussed [Clayton Christensen](http://dor.hbs.edu/fi_redirect.jhtml?facInfo=bio&facEmId=cchristensen&loc=extn)'s disruptive innovation theory (as popularized in [The Innovator's Dilemma](http://www.amazon.com/Innovators-Dilemma-Revolutionary-Business-Essentials/dp/0060521996/?tag=frankhecker-20) and other books) and how it applied to the rise and fall of Netscape. In this post I turn to more recent events, and attempt to answer at least some of the five questions with which I ended previously:



	
  * Is Firefox more of a sustaining innovation or a disruptive innovation?

	
  * In what sense is the Mozilla project pursuing (or could pursue) disruptive strategies, whether based on low cost or competing against nonconsumption?

	
  * What might competing against nonconsumption entail in the context of Firefox and the Mozilla project?

	
  * What is the value network for Firefox and the Mozilla project, and how does it overlap with the value network for IE and Microsoft?

	
  * Are the Mozilla project and Firefox potentially vulnerable to a co-optation strategy by Microsoft, as Netscape was?




#### Firefox: sustaining or disruptive innovation?


Let's start with the question of whether Firefox itself is a disruptive innovation or a sustaining innovation. Before trying to answer this question, note the following points:



	
  * Given that disruptive innovation plays the starring role in Christensen's theory, it's tempting to see disruptive innovation even where it's not present. We need to resist this temptation; Christensen uses the term disruptive innovation in a very specific sense, and we need to apply his definition very carefully if we are to use his theory to draw any reasonable conclusions.

	
  * Although we usually think of vendors as the key actors (the disruptors and disruptees) in the final analysis to determine whether an innovation is disruptive or sustaining we need to look at it from the perspective of the users, _not_ from the perspective of vendors. More specifically:

	
    * If an innovation gives existing users better ways to do the same things they're already doing then it's a sustaining innovation.

	
    * If an innovation gives existing users cheaper ways to do the same thing they're already doing then it's a low-cost disruptive innovation.

	
    * If an innovation allows new users to do things they previously were not able to do, and/or allows existing users to do the same things but in different contexts, then it's a new-market
disruptive innovation.




	
  * Finally, Christensen's theory of innovations (as he has evolved it) is concerned with innovations broadly defined to include not just technology innovations (e.g, Intel microprocessors or the Windows
operating system) but also business innovations (e.g., Dell's build-to-order direct sales model and the business processes supporting it).


Given the final point above, we have to consider both what Firefox is (i.e., as a software product) and how it is created, marketed, and used as a platform for other things.

Following on from the second point above, Firefox viewed simply as a browser (and nothing else) is best thought of as a sustaining innovation in the browser market, providing higher performance along
dimensions viewed as important by demanding Internet users: simplicity, better ease of use (including polished UI design), increased power (including features like tabbed browsing), better security, and enhanced customizability.

More specifically we can characterize Firefox the browser as a displacement, Christensen's term for a sustaining innovation that [occurs] at a point of modularity and [targets] a specific piece of an industry's value chain (Appendix, [Seeing What's Next](http://www.amazon.com/Seeing-Whats-Next-Theories-Innovation/dp/1591391857/?tag=frankhecker-20)). Firefox takes advantage of the fact that well-defined interfaces exist between a web client and a web server (e.g., HTTP, HTML and XML, CSS, JavaScript, etc.), as well as between a client application and the client operating system (e.g., the OS APIs for Windows, Linux, and Mac OS X). This then allows Firefox to be used as a drop-in replacement for browsers such as Internet Explorer and Safari that are distributed as part of the base OS.


#### Disruptive strategies for Firefox and Mozilla


Are there aspects of Firefox that constitute a disruptive innovation? Again, looking at it as a browser product Firefox does not appear to be a low-cost disruptive innovation in the traditional sense. The cost in low-cost is cost to the user; this includes price in the monetary sense but other things as well, including for software ease of downloading and installation. In this sense Internet Explorer (at least for Windows) is and will always be the lowest-cost product, since in addition to being free as in beer it will either just be there to begin with or will be auto-added and -upgraded as a side effect of turning on Windows auto-update.

However while not necessarily a low-cost disruptive innovation itself, Firefox is closely linked with and made possible by the low-cost disruptive innovation represented by the open source development model. In the case of Firefox the open source development model does not make the product cheaper than competitive products (as, for example, MySQL is cheaper than Oracle); however it does enable Firefox to be developed and maintained on a relative shoestring compared to traditional proprietary products in its space (for example, Netscape Navigator and Communicator).

(Note that the open source development model doesn't really reduce the amount of development work necessary to build a product like Firefox; rather it enables that work to be spread across multiple organizations and groups of individuals, as opposed to being concentrated in a single vendor, and also allows development to be cumulative over time, since the source code and associated developer expertise is less likely to be lost due to the vicissitudes of that single vendor.)

The Firefox team has also leveraged another major disruptive innovation, namely blogging, to support grassroots product marketing and evangelism, for example with the [SpreadFirefox](http://www.spreadfirefox.com/) effort. Just as blogging in general has provided people a way to self-publish their thoughts and comments independently of traditional media outlets, the blogosphere has provided a medium by which Firefox has been publicized at relatively low cost and without depending on the mainstream IT/computing media. This campaign has been so successful that — at least in the context of the Internet — Firefox now has [very high brand recognition and loyalty](http://www.hecker.org/mozilla/feel-the-love), achieved at minimal expense compared to traditional approaches to marketing.

Are there ways in which Firefox competes against nonconsumption (i.e., constitutes a new-market disruption)? Again, Firefox as browser doesn't really fit this description, given that almost everyone using Firefox was already browsing the web using some other product.

However just as it leveraged the low-cost disruptive innovation that is the open source development model, Firefox has also leveraged the new-market disruptive innovation represented by web-based application development as an alternative to traditional client-server application development. More specifically, Firefox's strong support for web standards has made it popular as a development platform for web developers (who then port their applications to older browsers such as IE 5 and 6), while its support for the bundle of technologies newly termed ["AJAX"](http://en.wikipedia.org/wiki/AJAX) puts it in the forefront of current trends in advanced web applications.

In addition, the Firefox extension mechanism extends this story by enabling web developers to take their knowledge of web technologies (HTML/XML, CSS, DOM, JavaScript, etc.) and apply that knowledge to customization and extension of Firefox itself, a task that in the past required knowledge of C++ and Mozilla internals.

The Firefox extension mechanism and the applications built using it are in my opinion where the most possibilities lie for Firefox evolving into a true new market disruptive innovation. To take perhaps the most interesting example, the [Greasemonkey](http://greasemonkey.mozdev.org/) extension enables individuals to customize their own views of their favorite web sites (e.g., to rearrange or remove page elements, add additional content and functions, etc.), either by writing Greasemonkey user scripts (again using the tools in the standard web developer's toolkit) or by downloading [scripts written by others](http://dunck.us/collab/GreaseMonkeyUserScripts).

The [Platypus](http://platypus.mozdev.org/) extension takes this a step further by trying to provide an easy way for people to simply specify the changes they want made to a web site (using an interface within the browser itself) and then automatically generate a Greasemonkey user script implementing those changes. This works better in theory than in practice, at least for me (I couldn't quite get it to work in my first attempt), but that's not necessarily a problem.

As Christensen notes, at their inception disruptive innovations are almost always sub-optimal in one or more aspects; however users accept these blemishes because the disruptive innovations allow them to do something that they previously could not do, or could do only at great expense. If the disruptive innovation is truly worthwhile then over time it will be improved (through sustaining innovations) to remove the blemishes and provide a much improved experience for users.

In summary, although not necessarily in and of itself a disruptive innovation considered simply as a browser, Firefox considered as a project leverages three of the most important disruptive innovations of the past few years — the open source development model, web application technologies, and the blogging phenomenon — and Firefox considered as a platform supports true new market disruptive innovations.

These various disruptive innovations are in turn synergistic, and the combination of them in a single context in my opinion accounts for much of the impact of Firefox. In contrast, consider the cases of Internet Explorer and Thunderbird:

IE also offers support for the key AJAX technologies, and in fact pioneered the key [XMLHttpRequest](http://msdn.microsoft.com/msdnmag/issues/0400/cutting/) feature several years ago, well before it was included in Firefox. IE also introduced the idea of browser extensions and browser-based desktop applications ([HTML Applications](http://msdn.microsoft.com/workshop/author/hta/overview/htaoverview.asp) or HTAs) developed using HTML, JavaScript, etc., again several years before the advent of Firefox.

Why then is Firefox getting credit instead of IE for what some might claim as IE's innovations? Part of the reason may be limitations in IE's implementations of extensions, HTAs, etc., and/or Microsoft's failure to more agressively promote innovative uses of IE technologies (a failure perhaps prompted by web-based applications posing a threat to traditional Windows-based applications). However I'd argue that Firefox has succeeded (where IE did not) in large part because it leverages both a vibrant open source development community and an effective blog-enabled volunteer evangelist community, neither of which IE has had.

(Microsoft of course has traditionally done an excellent job of attracting developers, but in the case of IE — as with other Microsoft products--this community seems to have been mainly focused on intranet applications and/or proprietary commercial applications. As for evangelism, the last versions of IE predate the blogging explosion; for IE7 Microsoft appears to be trying to put together a team of non-Microsoft bloggers to promote the product, a more top-down approach as opposed to leveraging true grassroots enthusiasm.)

IE was thus able to leverage the disruptive innovation of web-based applications but not the disruptive innovations of the open source development model and the blogosphere. Thunderbird in my opinion has the opposite problem: It can leverage the open source development model, and perhaps someday may have a SpreadThunderbird in emulation of SpreadFirefox; however unlike Firefox (and even with a similar extension mechanism to Firefox) Thunderird cannot fully leverage the disruptive innovation of web-based applications — at the end of the day Thunderbird is just a desktop email client (no matter how good), at a time when the very idea of a desktop email client, especially for the consumer market, has been under sustained attack by web-based email applications beginning with [Hotmail](http://login.passport.net/uilogin.srf?lc=1033&id=2) and culminating (at least thus far) in [Gmail](https://www.google.com/accounts/ServiceLogin?service=mail&passive=true&rm=false&continue=http%3A%2F%2Fgmail.google.com%2Fgmail%3Fui%3Dhtml%26zy%3Dl).

That concludes my attempt to answer the first three questions I posed above. When I next have time to post I'll try to address the final two questions: What is Firefox's value network (especially as compared to Microsoft's), and how might the competition between Firefox and IE play out?

Update: I've revised the article to reflect [comments from Daniel Glazman](http://www.glazman.org/weblog/dotclear/index.php?2005/06/14/1081-is-firefox-a-disruptive-innovation), who believes I didn't emphasize enough the disruptive nature of Firefox's extensibility. I've tried to correct this lack; however I still believe that for the vast majority of its users Firefox is mainly relevant as a sustaining innovation, given that the use of Firefox extensions (and especially truly disruptive extensions like Greasemonkey and Platypus) still seems to be confined to a relatively small subset of Firefox users.

UPDATE: Subsequent posts in this series discuss the [value network for Firefox](http://blog.hecker.org/2005/06/26/the-firefox-value-network/) and potential "[asymmetric competition](http://hecker.org/mozilla/asymmetric-competition)" between the Mozilla project and Microsoft.
