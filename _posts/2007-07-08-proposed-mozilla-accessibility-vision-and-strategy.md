---
comments: false
date: 2007-07-08 12:00:07+00:00
layout: post
slug: proposed-mozilla-accessibility-vision-and-strategy
title: Proposed Mozilla accessibility vision and strategy
tags:
- mozilla
- accessibility
- mozillafoundation
---

For some time now the Mozilla Foundation has been involved in supporting efforts to make Firefox and other Mozilla products more accessible to people with disabilities; see for example my [blog post on Mozilla and accessibility](http://blog.hecker.org/2006/05/25/making-choice-and-innovation-accessible-to-all/). This document builds on the ideas in that post to propose an overall vision and strategy for possible efforts to improve the accessibility of Firefox and other Mozilla-related software and the web in general.





Note that the ideas expressed in this post are my own and do not necessarily represent the official position of the Mozilla Foundation. It's up to the Foundation board and to the new executive director to decide whether and how to implement this proposed strategy. Also note that my comments are primarily concerning the Mozilla Foundation; however the Mozilla Corporation has also taken some great steps to support accessibility (for example, [hiring Tim Keenan](http://groups.google.com/group/mozilla.dev.accessibility/browse_frm/thread/d4cf505996400657/1c02264317150bf3#1c02264317150bf3) to work full-time on accessibility QA and evangelism) and no doubt will do more in future.





#### Accessibility vision





The [Mozilla Manifesto](http://www.mozilla.org/about/mozilla-manifesto.html) has as its second principle The Internet is a global public resource that must remain open and accessible. Accessible has many meanings, but in this context we interpret it to mean accessible to people with disabilities. This may seem a significant narrowing of the principle, but in fact both disability and accessibility can be interpreted more broadly. As [David Bolter](http://david.atrc.utoronto.ca/) of the [University of Toronto Assistive Technology Resource Centre](http://atrc.utoronto.ca/) (a Mozilla Foundation grantee) [points out](http://mindforks.blogspot.com/2006/12/solving-disability.html), disabilities can simply be viewed as mismatches between particular individuals and their environment, including the software they use.





In this sense accessibility is simply an aspect of software usability in general, and thus extends beyond the stereotypical accessibility scenario (e.g., a blind person using a screen reader) to the more
general problem of matching user interfaces to the abilities of the people using them. This significantly expands the population to which the promise of the Mozilla Manifesto applies: not just blind and low-vision users, not just people with physical mobility or dexterity problems, but also people with dyslexia and other learning disabilities, people with minimal literacy skills, and so on.





The proposed accessibility vision for Mozilla is thus to help make the Internet an accessible resource in the sense used above, and to do so in a way consistent with the other principles of the Manifesto, including those addressing the importance of open source software, innovation, interoperability, decentralized participation, and making it possible for individuals to shape their own experiences.





#### Accessibility strategy





The proposed Mozilla accessibility strategy encompasses the following three elements:







  * making Firefox a showcase for how to address Internet accessibility issues


  * building a thriving community of developers and other contributors interested in Firefox and Mozilla accessibility issues


  * working with others to extend the Firefox and Mozilla accessibility success story across all major OS/desktop platforms, including in particular open source platforms





These elements can be further expanded as discussed below.





##### Firefox accessibility





Over the past few years Firefox has advanced considerably with regard to its accessibility, both through changes to Firefox itself and changes to assistive technology products like the Jaws and Window-Eyes screen readers. There are still a few remaining problems here and there, and we'll continue to work with the screen reader vendors and others to resolve such issues as they arise.





However the overall goal is not just to play catch up to Internet Explorer in terms of accessibility and compatibility with existing AT products, but rather to leapfrog IE in terms of advanced accessibility
functionality when and where possible. The proposed initiatives in enhancing Firefox accessibility are:







  * Enhancement of Firefox to support the [WAI ARIA](http://www.w3.org/WAI/intro/aria) set of standards for accessible rich Internet applications. These standards are key to removing the accessibility barriers posed by use of AJAX-based techniques for enabling dynamic web-based content and applications.


  * Implementation of the [IAccessible2](http://www.linux-foundation.org/en/Accessibility/IAccessible2) accessibility API. IAccessible2 is key to moving Windows-based assistive technnology (AT) products such as screen readers onto a modern API that extends and complements the legacy [MSAA](http://en.wikipedia.org/wiki/Microsoft_Active_Accessibility) API while at the same time being modeled on nonproprietary Unix/Linux accessibility APIs (including the OpenOffice.org API).


  * Creating test cases, testing tools, and related QA infrastructure for the above projects.





##### Building a community of accessibility developers





Originally the Mozilla accessibility "community" consisted of essentially one person, Aaron Leventhal of IBM. We need to attract new developers and other contributors to the task of improving Mozilla and Firefox accessibility; we also should make a special effort to attract developers and other contributors who themselves have disabilities, in line with the goal of helping people scratch their own itch.





Proposed initiatives in support of this goal include:







  * Using small mini-grants to encourage existing Mozilla developers to try their hand at accessibility-related projects.


  * Encouraging Mozilla accessibility developers to interact more deeply with each other and with the broader community of accessibility developer, through sponsorship of travel to accessibility-related meetings and conferences.


  * Improving the accessibility of key Mozilla project tools and infrastructure components to developers with disabilities, enabling them to participate in an equal basis in Mozilla project activities.


  * Creating tools, documentation, and related resources specifically intended to help developers concerned with Firefox and Mozilla accessibility issues.





##### Extending accessibility across platforms





Historically assistive technology products such as screen readers have focused almost exclusively on Microsoft Windows and on major Windows-based applications such as Microsoft Office. Combined with a high learning curve for users of AT products, this has resulted in an AT market and user base that is dominated by proprietary software to a degree significantly greater than other areas of IT. This dominance also means that there has been relatively little success for open source AT software and not much of a community of open source accessibility developers.





Our goal is to break this dependence and to make open source software and development processes as important in the AT market as they are becoming in the wider IT market. Key initiatives in support of this goal include:







  * Enhancement of the Linux and Mac versions of Firefox to support better accessibility on those platforms.


  * Support for harmonization of accessibility APIs across platforms (e.g., harmonizing IAccessible2 for Windows with [ATK](http://developer.gnome.org/doc/API/2.0/atk/)/[AT-SPI](http://developer.gnome.org/doc/API/2.0/at-spi/) for Linux).


  * Support for creation of open source alternatives to existing proprietary screen readers and other AT products; examples include [NonVisual Desktop Access](http://www.nvda-project.org/) (NVDA) for Windows and [ORCA](http://live.gnome.org/Orca) for Linux/Unix.





#### Conclusion





The Mozilla project is well-positioned to play a leading role in Internet accessibility. It has one of the most popular and accessible Internet-related products in Firefox, it has a thriving community of people developing Firefox and Mozilla code and related add-ons, and it has the financial resources to make an ongoing long-term investment in the future of open source accessibility. My comments above are meant as a starting point for further discussion as to how Mozilla can best support the cause of making the web more accessible to all.



