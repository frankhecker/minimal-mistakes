---
comments: false
date: 2009-12-04 04:45:29+00:00
layout: post
slug: mozilla-education-looking-back-and-ahead
title: 'Mozilla Education: Looking back and ahead'
tags:
- education
- mozilla
---

I'm currently working on putting together a draft plan for [Mozilla Education](https://wiki.mozilla.org/Education/) activities in 2010. I'm a bit blocked on coming up with a coherent plan, so I thought I'd try to unblock myself by blogging my thoughts on the subject. These are informed by the recent [feedback on Mozilla Education](https://wiki.mozilla.org/Education/Feedback) I solicited from several Mozilla folks, as well as the [Mozilla Education 2009 report](https://wiki.mozilla.org/Education/ProgressReport2009) I wrote earlier. Note that I'm thinking out loud here, so this will be somewhat long and rambling.

Based on the feedback, the first point to address is: What is Mozilla Education, and what are its goals? The people I asked were familiar with what [Dave Humphrey](http://vocamus.net/dave/) has been doing at [Seneca College](http://zenit.senecac.on.ca/wiki/index.php/Main_Page) in terms of introducing students to Mozilla, but weren't clear on what was going on beyond that. So, some explanation: "Mozilla Education" as a program started out as an effort by the Mozilla Foundation to take what was going on at Seneca and try to replicate it at other schools, on the assumption that the Seneca approach was worth replicating. (There seems to be general agreement on this, though as discussed below there are some limitations to this approach.)

The primary goal of Mozilla Education now and going forward is to help grow a new generation of Mozilla contributors by working with students and educators around the world. In the original [Mozilla Education planning document](https://wiki.mozilla.org/Foundation:Planning:Education) we outlined another broader goal around promoting general innovation in education ("help to drive a new wave of participatory, student-led learning in fields like computer science, design and business"). As discussed in the progress report, we've since deemphasized that second goal and are now focusing Mozilla Education efforts primarily on the Mozilla project proper.

In the context of this discussion the term contributorcovers anyone who makes a significant positive impact on Mozilla worthy of recognition; this includes both technical and non-technical contributions, anything from doing heavy-duty Gecko hacking to helping out with marketing Firefox. Thus there are multiple types of students and educators who might participate in Mozilla Education, and multiple types of activities directed toward them. To provide a bit more focus, let's follow the advice of one of the people who provided feedback and discuss 1) what has worked (and not worked) in the past and 2) how we might take what's worked and establish scalable processes for the future.

The first thing to note is that the Seneca approach-integrating teaching of Mozilla technologies and practices directly into college and university courses-is proving to be somewhat replicable, with several schools and professors now teaching or planning to teach such courses. (See the [progress report](https://wiki.mozilla.org/Education/ProgressReport2009) for a full list.) However the pure Seneca-style approach has some limitations, at least from the point of view of producing core Mozilla contributors: It has been successful in producing good contributors in such areas as build infrastructure and release engineering, but less so in terms of producing contributors who are hard-core Mozilla hackers.

In my opinion this is not so much a failing of the approach as it is a failing of academia: The schools that have been most open to integrating open source development work into the classroom (like Seneca) are the schools that focus more on practical instruction for job-seeking students. The high-end research universities that attract top-quality computer science students are the ones least interested in anything that smacks of vocational education.

Until and unless this situation changes, I suspect that the most realistic approach to growing full-time core Mozilla contributors (i.e., people who are good candidates for employment at the Mozilla Corporation or Mozilla Messaging) is as follows:




  * Continue to promote the Seneca approach to schools that are most likely to be receptive to it, and in particular try to target schools interested in teaching topics like quality assurance through automated testing, [continuous integration](http://martinfowler.com/articles/continuousIntegration.html), and other software engineering practices needed in large-scale projects like Mozilla.


  * For research-focused institutions, pursue a more lightweight approach of encouraging professors to have students do Mozilla-related senior projects and independent study, either based on self-generated ideas or based on tasks previously identified as being [good student projects](https://wiki.mozilla.org/Education/ComputerScience#Finding_a_good_student_project).  Note this is lightweight only in the sense that it demands less of the school and its faculty; in practice this approach will be limited by the amount of effort existing Mozilla contributors can devote to helping students.


  * For recruitment of hard-core hackers continue to rely on recruiting students from top schools as Mozilla Corporation or Mozilla Messaging interns, outside the context of the Mozilla Education program proper. In this context it's easier to justify the amount of time needed to bring such students up to speed.



Moving beyond the issue of growing new core contributors, a second topic is that of encouraging students to make technical contributions outside the context of the core Mozilla code. This could include working on Firefox or Thunderbird add-ons, developing web applications that make use of new Firefox features, working with the various technologies being prototyped by Mozilla Labs, and so on.

In the context of Mozilla Education the [Processing for the Web](https://wiki.mozilla.org/Education/Projects/ProcessingForTheWeb) project (based on [processing.js](http://processingjs.org/)) is the primary project of this type thus far, and is proving to be [quite successful](http://vocamus.net/dave/?p=910). Projects like this are somewhat peripheral to the core Mozilla activities around shipping new releases of Firefox, Thunderbird, etc. However they do get more people involved in working with Mozilla technologies and code, help to promote adoption of Mozilla products, and help support other Mozilla activities, whether technical or not. (For example, the Processing for the Web work could be used in the context of the "[visualize the (open) web](http://commonspace.wordpress.com/2009/12/03/drumbeat-viztheweb/)" project proposed as part of [Mozilla Drumbeat](https://wiki.mozilla.org/Drumbeat).)

In my opinion doing projects like Processing for the Web is a useful and scalable approach for two reasons. First, it provides a common focus for lots of student work, so that the limited time of mentors can be leveraged across more people: A mentor can help many students at once, and students can help one another. Second, it leverages the time and expertise of people outside the project (in this case people like [Al MacDonald](http://hyper-metrix.com/) who were already working on processing.js), further lessening the burden placed on core Mozilla contributors.

Are there other possible projects like Processing for the Web that could serve as a focus for student contributions? One possibility is a project around [Dehydra](https://developer.mozilla.org/en/Dehydra), [Pork](https://developer.mozilla.org/en/Pork), and similar code analysis and rewriting tools designed for large code bases like Mozilla's. Like the Processing for the Web project, such a project could leverage an existing community of people outside of Mozilla, including developers working in the GCC project and others developing or working with advanced code analysis tools.

Another way to engage students is the [design challenge](http://design-challenge.mozillalabs.com/) approach pioneered by Mozilla Labs and then adopted in a Mozilla Education context for the [Jetpack for Learning Design Challenge](http://design-challenge.mozillalabs.com/jetpack-for-learning/). Design challenges and similar contest-like events have proved successful at attracting student participants, including design students and others who are not programmers at heart. Keys to success include have a fairly tightly focused challenge, along with one or more expert mentors who can help the students realize their ideas.

Because they're focused on leading-edge work not yet ready for incorporation into standard shipping products, the Mozilla Labs folks have some freedom and time available for running design challenges that other Mozilla core contributors don't necessarily have. In the context of Mozilla Education running a design challenge would typically finding third party subject matter experts to help with the challenge, which in turns means that challenges would typically require additional funding over and beyond what the Mozilla Foundation spends on the basic Mozilla Education program.

With that in mind, here are my thoughts on how Mozilla Education should approach engaging students to contribute outside the context of the core Mozilla codebase:




  * Sponsor at least three projects in 2010 that can each serve as a focus for engaging larger groups of students:


    * continuation of the Processing for the Web project


    * a new project around tools for analyzing and/or rewriting code, leveraging existing work by Taras Glek and others and done in loose cooperation with the GCC project or others


    * at least one other new project in an area yet to be determined.




  * Start at least one new Mozilla Education design challenge project in 2010, if (and only if) there is a suitable problem (e.g., one that doesn't overlap with planned Mozilla Labs challenges) and funding can be found.


  * coordinate with Mozilla Labs to cross-promote Labs design challenges to the students involved in Mozilla Education activities, and vice versa.



Thus far I've primarily discussed engaging with CS students and others in related IT-centric programs. What about students in other areas, such as design or marketing? My feeling is that in 2010 at least Mozilla Education won't play a major role in terms of growing core contributors in those areas, primarily because they're outside the expertise of the main people working on Mozilla Education activities.

However that doesn't mean that those areas have to be (or can be) ignored from a Mozilla Education point of view. One of the things we discussed in 2009 was the role of the proposed [education.mozilla.org](http://education.mozilla.org/) web site (currently instantiated as a set of pages on wiki.mozilla.org. We've pulled back on some of the more expansive ideas for what that site might become. However I do think it makes sense to use it as a central point from which students can find information on Mozilla activities of potential interest to them. That leads to my final Mozilla Education proposed activity for 2010:




  * Establish and actively maintain a single high-profile page (e.g., www.mozilla.org/education) that can serve as a portal to information about Mozilla activities of potential interest to students, including not only Mozilla Education material but also links to Mozilla Labs design challenges, student internship opportunities, etc.



Those are all my thoughts for now. If you have comments or questions about the above, please let me know. I'll next boil this down into an actual plan.
