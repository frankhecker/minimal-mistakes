---
comments: false
date: 2004-10-20 12:00:41+00:00
layout: post
slug: accessibility-statement-for-wwwheckerorg
title: Accessibility statement for www.hecker.org
tags:
- site
- accessibility
---

NOTE: This post refers to the old Blosxom-based version of my blog. I’ve left it unchanged since it may still be of historical interest.

I've tried to make this site accessible to as many people as possible; here I describe the accessibility features of this site. (This statement is based on [Mark Pilgrim's accessibility statement](http://diveintomark.org/about/accessibility/).) If you have any questions or comments about the accessibility of this site, feel free to email me at [hecker@hecker.org](mailto:hecker@hecker.org).


#### Access keys


Most browsers support jumping to specific links by typing special key combinations defined on the web site.  On Windows, you can press ALT + an access key; on Macintosh, you can press Control + an access key.

The home page and all archives define the following access keys:



Access key 1
    Home page
Access key 4
    Search box
Access key 9
    Feedback
Access key 0
    Accessibility statement
(Note that I didn't define an access key to skip to the main content because the main content is already the first thing on the page.)


#### Standards compliance





	
  1. I intend to ensure that all pages are Bobby AAA approved. More on that later as I complete the necessary work.

	
  2. I intend to ensure that all pages are Section 508 compliant. More on that later as I complete the necessary work.

	
  3. The home page and blog archives validate as HTML 4.01 Strict. (Some older pages on the site have not yet been modified to validate properly.)

	
  4. The home page, blog archives, and other pages use structured semantic markup.  For example, on pages with more than one entry H2 tags are used for individual post titles, so that JAWS users can skip to the next post with ALT+INSERT+2.




#### Navigation aids





	
  1. All blog archive pages have `rel=home` links to aid navigation in text-only browsers and screen readers; I may add `rel=previous`, `next`, and `up` links in the future. (Unfortunately `prev` and `next` in particular are not simple to implement in Blosxom, the blogging system I'm using.) Mozilla users can take advantage of this feature by selecting the View menu, Show/Hide, Site Navigation Bar, Show Only As Needed (or Show Always).  Opera 7 has similar functionality.

	
  2. The home page and all archive pages include a search box (access key 4).




#### Links





	
  1. Many links have title attributes which describe the link in greater detail, unless the text of the link already fully describes the target (such as the headline of an article).

	
  2. Whever possible, links are written to make sense out of context. Many browsers (such as JAWS, Home Page Reader, Lynx, and Opera) can extract the list of links on a page and allow the user to browse the list, separately from the page.

	
  3. Link text is never duplicated; two links with the same link text always point to the same address.

	
  4. There are no `javascript:` pseudo-links.  All links can be followed in any browser, even if scripting is turned off.

	
  5. There are no links that open new windows without warning.




#### Images





	
  1. With one exception (a photo for my biography page) this site does not use images at all.




#### Visual design


This site and all its archives use cascading style sheets for visual layout.



	
  1. The style sheets for this site do not specify a base font size, and use relative font sizes to specify the appearance of headings and related text. Text on this site should be resizable in any browser that permits text resizing.

	
  2. If your browser or browsing device does not support stylesheets at all, the content of each page is still readable.




#### References


In creating this site I made use of Mark Pilgrim's [Dive Into Accessibility](http://diveintoaccessibility.org/) book and related materials. See the book for a complete list of other references.
