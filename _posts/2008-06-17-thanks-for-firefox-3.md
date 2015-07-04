---
comments: false
date: 2008-06-17 01:50:09+00:00
layout: post
slug: thanks-for-firefox-3
title: Thanks for Firefox 3
tags:
- mozilla
---

Anyone reading this blog is almost certainly aware that Firefox 3 is going to be released tomorrow, so I won't spend any time telling you [how great it is](http://www.dria.org/wordpress/archives/2008/06/12/655/), and how you should [download it the first day it's available](http://www.spreadfirefox.com/en-US/worldrecord/). I've traditionally been a late adopter of new browser releases, and started using Firefox 3 on a daily basis only with the beta 5 release. I've very much enjoyed the new features (especially the performance improvements), have encountered very few problems, and had to make only two non-trivial changes to get it to work to my liking. (For anyone who cares, these were hacking the GTDinbox extension to make it compatible with RC1 and beyond, and setting the browser.identity.ssl_domain_display parameter to display the domain name for non-EV SSL/TLS sites.)

I want to take this opportunity to thank all the people involved in making Firefox 3 happen, including two groups in particular:



	
  * The developers and testers of [Firefox 3 accessibility features](http://accessfirefox.org/Firefox_3_Accessibility_Features.php) (and [Mozilla accessibility support](http://wiki.mozilla.org/Accessibility) in general) as well as those involved with the assistive technology infrastructures that use those features to deliver a better experience to users (including in particular the open source products [Orca](http://live.gnome.org/Orca) and [NVDA](http://www.nvda-project.org/)). Special thanks go to Aaron Leventhal for his long service to the Mozilla accessibility community, and to Marco Zehe and Will Walker, who are taking over various of Aaron's responsibilities. Check out the [2007 grants and related expenditures report](http://blog.hecker.org/2007/11/19/mozilla-foundation-grants-and-related-expenditures-for-2007/) for a list of (and links to) all the people and organizations that the Mozilla Foundation has funded for accessibility-related projects, including (in alphabetical order) ATRC, Charles Chen, Codethink Ltd, the GNOME Foundation, Scott Haeger, Eitan Isaacson, Knowbility, Steve Lee, the NVDA project, Ariel Rios, and Alexander Surkov. I also want to thank others who helped out in various ways, including Joanmarie Diggs of the Orca project, Chris Leung of [Project:Possibility](http://www.projectpossibility.org/), and Ken Saunders of [Access Firefox](http://www.accessfirefox.org/) fame.

	
  * The developers and others involved in the Firefox 3 features for enhanced [site identification](http://www.dria.org/wordpress/archives/2008/05/06/635/) and support of [extended validation certificates](http://en.wikipedia.org/wiki/Extended_Validation_Certificate). Special thanks go to Johnathan Nightingale for his work in creating the new UI, to Kai Engert for implementing the PSM code to recognize EV certificates and working hard to get new CA root certificates into Mozilla and get them enabled for EV where appropriate, and to Nelson Bolyard, Bob Relyea, and other members of the NSS development team for creating the new [NSS 3.12](http://wiki.mozilla.org/NSS:Roadmap#NSS_3.12) release that underlies Firefox 3 PKI support. I'd like to also thank all the members of the Mozilla community who participate in the work of evaluating and approving new CAs for inclusion, including in particular Nelson Bolyard, Gerv Markham, and Eddy Nigg for their various contributions to the process.


If I've inadvertently not mentioned anyone who I should have mentioned, please send me a note and I'll correct this post. In the meantime thanks again to everyone who helped make Firefox 3 possible!
