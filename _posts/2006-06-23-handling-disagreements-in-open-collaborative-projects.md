---
comments: false
date: 2006-06-23 00:00:55+00:00
layout: post
slug: handling-disagreements-in-open-collaborative-projects
title: Handling Disagreements in Open Collaborative Projects
tags:
- misc
---

This article is an outgrowth of my personal experiences as a participant in the [Mozilla project](http://www.mozilla.org/about/) working to create policies for the project that are both reasonable in terms of addressing the presumed problem at hand and acceptable to the various people who have a perceived stake in how the problem is addressed. In the course of doing that I evolved my own personal approach to approaching the problem of creating policies in an environment where people might disagree deeply about what such policies should be.

As a guide to exercising leadership in an open source project (or other open collaborative project) my own contribution pales in comparison to a magnum opus like [Karl Fogel](http://www.red-bean.com/kfogel/)'s book [Producing Open Source Software](http://producingoss.com/). However it does have the advantage of focusing on just one key aspect of project leadership, and as a consequence is relatively brief. (I used to work with Karl, and I hope he'll forgive me for not having yet read all the way through his book!) This article also attempts to tie the problem of open source project leadership to the more general problem of pursuing collective action in an environment marked by fluid group membership, differing values among group members, an absence of coercion, and possibly weak and/or informal governance structures.

Note that the ideas expressed in this article are not original to me, but rather are my adaptations and interpretations of others' ideas; see the final section for more information.



## Why I wrote this



As noted above, I've been involved with the Mozilla project for several years (before it was even formally established). My participation is not as an active developer but rather as someone interested in the practical policy and business aspects of open source development, and in particular how projects can make decisions and adopt policies even in cases where there are clear and continuing disagreements on the decisions and policies in question.

As a result of my experience I have definite thoughts on how projects can do this successfully. In response to a post on [the community and decision-making](https://blog-lizardwrangler-dev.allizom.org/2006/06/06/the-community-and-decision-making/) by [Mitchell Baker](http://en.wikipedia.org/wiki/Mitchell_baker) (CEO of the [Mozilla Corporation](http://www.mozilla.com/about/) and long-time leader of the Mozilla project), [Ian Grigg](http://iang.org/) commented that you can't tell someone how to be a good leader and that the role of a leader is essentially to determine and enforce decisions ultimately made by the community.

I respect Ian's opinions, but in this particular case I think he's wrong on both counts: As I noted in my own comment, I think that communities don't converge on decisions like markets converge on prices, that leaders do more than just facilitating such convergence, and there are actually some general principles that can help guide leaders, or at least leaders of open source projects, to help the community make better decisions (as Ian put it).

My comments are based on my own experience in dealing with projects like [relicensing the Mozilla source code](http://www.mozilla.org/MPL/relicensing-faq.html) and creating the [Mozilla security bugs policy](http://www.mozilla.org/projects/security/security-bugs-policy.html) and [CA certificate policy](http://www.mozilla.org/projects/security/certs/policy/), and some of the things I tried to do in those contexts. I will be the first to admit that the approach I discuss below can sometimes take a lot of time and effort; however I will also note that the decisions made in the course of those projects have for the most part held up and in particular have not been the subjects of ongoing complaints and second-guessing--so in my opinion the time was well-spent and the approach arguably effective.

In cases where things went awry (as in the recent controversy over the [feed icon](http://hecker.org/mozilla/feed-icon-as-community-mark)), arguably it did so because for one reason or another I didn't follow my own advice. Hence my writing this document: both to remind myself of the principles I think are important and worthwhile, and to prompt others to remind me if I happen to forget.



## Bounding the problem space



Before I go further, let me be clear on the particular problem we're trying to solve. Perhaps the best way to explain this is to take the title of this article--handling disagreements in open collaborative projects--and deconstruct it, beginning from the end:





  * collaborative projects: My focus is on projects that involve a number of people freely working together to create some concrete result. I'm excluding cases like traditional [polities](http://www.m-w.com/dictionary/polity) where people are not necessarily in a freely-chosen association, as well as cases like religions and other social groups that are organizing around expressing commonly-held values as opposed to achieving a common goal.


  * open: my focus is specifically on collaborative projects that are potentially open to anyone and that are structured in such a way that attracting new people to the project is both possible and productive. Examples of such open collaborative projects include [open source](http://en.wikipedia.org/wiki/Open_source_software) and [free software](http://en.wikipedia.org/wiki/Free_software) development projects, other public software development projects that don't necessarily use [FOSS licenses](http://en.wikipedia.org/wiki/FOSS#Licenses), and projects like [Wikipedia](http://en.wikipedia.org/wiki/Wikipedia) that aim to create other types of content through [commons-based peer production](http://en.wikipedia.org/wiki/Commons-based_peer_production).


  * disagreements: I focus on project-related conflicts, whether among project participants or between project participants and others external to the project.
  * handling: Finally, I focus not on resolving disagreements but rather on handling them. As I discuss below in more detail, I strongly believe that in the context of open collaborative projects it is not possible to definitively resolve all disagreements to the satisfaction of those disagreeing; I believe instead that in the real world the best we can hope for is to manage disagreements well enough to get some work done.




## The problem at hand



In particular, our goal should be to make decisions that stick, that is, decisions that are accepted as final, albeit perhaps grudgingly, and that do not become the locus of continuing disruptive controversies.

Assuming your goal as a project is to get something accomplished, there are multiple ways in which you could fail to do that. One possibility is to become mired in endless internal conversations relating to a particular decision ([paralysis by analysis](http://en.wikipedia.org/wiki/Analysis_paralysis), as it's often termed).  Even though such conversations may be polite and reasoned you're still not getting any work done; in software terms you're stuck in an infinite loop going round and round on the same topic.

At times such internal discussions get out of hand and degenerate into full-blown internal conflicts. If unchecked these can threaten a project's cohesion and its prospects of future growth: Some people may leave, others may be deterred from joining, and ultimately the project may simply crash and burn.

Finally, in addition to internal disputes projects may become embroiled in external disputes, for example with other projects that are viewed as competitive. Here the goal is not necessarily to maintain internal cohesion; most social groups will become automatically more cohesive when subjected to external attacks (the circle the wagons syndrome). Rather the goal is to not allow reflexive defensive actions to close off the project from potentially positive influences or (even worse) actively turn people against the project, to its ultimate detriment.

The role of a leader in an open collaborative project can then be at least partially defined as follows:





  * to keep the project out of the infinite loop of discussion and ensure that decisions get made;


  * to protect the project from internal conflict that might otherwise damage its current or future prospects for getting useful work accomplished; and


  * to represent the project to the outside world in a manner that is true to the goals and values of the project while also maximizing the future possibilities for the project to productively interact with those within that other world.



I believe that to a significant degree leaders (or prospective leaders) accrue authority within a project to the extent to that they can successfully accomplish the above objectives.



## The importance of values



In my opinion almost every significant dispute between people within a collaborative project is ultimately grounded in the values they hold. On a spectrum where correct vs. incorrect is at one end and good vs. evil is at the other, most disputes are about things in the middle: right vs. wrong.

In this regard I believe it's no accident that--at least in English--the words right and wrong can have double meanings, leaning alternately toward one or the other end of the spectrum. In relation to this, a lot of disputes--including some particularly vitrolic ones--are between people who can't even agree on where a particular issue is located along the spectrum.

Thus, for example, as [Richard Stallman](http://en.wikipedia.org/wiki/Richard_Stallman) notes in his essay on [free software vs. open source](http://www.fsf.org/licensing/essays/free-software-for-freedom.html), he sees decisions about software licensing as moral issues while others see them as pragmatic exercises in determining what's right (in the sense of effective or appropriate) for a given purpose. Similarly, some standards purists see decisions about how to deal with malformed content as a simple matter of technical correctness--if it's not valid it's an error and should be treated as such--while others believe that it's not quite as simple as that.

If most significant disagreements are indeed in large part about values, what conclusions can we draw from that? First, and most obviously (at least to me), logic alone is not and never will be a sufficient tool to settle most disagreements, regardless of how often (or how loudly) one repeats the logical arguments. With logical arguments axioms are key, and beyond the realm of mathematics (and perhaps in some cases even within it) axioms are in large part a function of values.

Second, with many if not most disagreements there won't be and by the nature of things can't be One True Answer that will make everyone happy. Therefore we have to settle for a lesser goal, namely to resolve disagreements in a way that will stick: that will induce any remaining unhappy people to keep their unhappiness in check, and that will let everyone continue to work together to do new things--and as a consequence have new and different disagreements instead of obsessing on old ones.



## Making decisions in the face of disagreement



How to do this? I think acting in accordance with the three principles discussed below is key.



### Accountability



The first principle has to do with _accountability_: who's accountable to who else, why, and for what? The guiding principle here for would-be decision makers and disagreement resolvers is to cast a wide net in terms of whom you are and should be accountable to in relation to the decision(s) you're making. For one example of what I mean by cast a wide net see point 3 of the [CA certificate metapolicy](http://hecker.org/mozilla/ca-certificate-metapolicy) where I tried to think seriously about issues of accountability, be very explicit about whom we were accountable to and why, and consider accountability to people and organizations beyond just Mozilla users and CAs.

Why do this? For one thing, it helps you think about who might strongly object to a particular decision, and gets you on the track of thinking how you might minimize the impact of their objections or even possibly convert them into allies. It also helps you think about the wider context in which you'll be making the decision, which may influence the actual decision you'll make. In particular, it may alert you to particular people's values, how they're likely to judge the decision, and what arguments you can make to justify the decision to them (see the third principle below). Finally, it helps determine how transparent the decision-making process needs to be (see the second principle below).



### Transparency



The second principle has to do with _transparency_: how open is the process of making the decision, both in terms of who can actively participate in the process and who can at least observe what goes on?  The guiding principle here is that in general the process should be as transparent as possible, and in particular needs to be transparent to all those to whom you're accountable (where we're being expansive about whom we're accountable to, per the first principle). There are multiple reasons for being as transparent as possible:





  * First, you want to absolutely avoid a situation in which there are people who believe they are affected by your decision (i.e., to whom you're accountable, at least in their mind) but who are kept outside the process of making that decision. If this happens then a perhaps relatively straightforward disagreement blow up into a full-fledged controversy, with accusations of bad faith, dictatorial behavior, and so on. By bringing such people into the process you minimize the possibility of such blow-ups. (And how do you identify such people? By going through the exercise recommended by the accountability principle.)


  * Transparency also helps promote early detection of flaws in potential approaches you might consider. As in producing software, in producing policy it is much more expensive to fix defects at the end of the process than at the beginning.


  * Finally, having a more transparent process provides you more opportunity to play to the crowd--in other words, through your publicly-visible actions you can influence the silent majority of people to your side of the issue. This is a function both of your being transparent in the first place and also of the types of arguments you publicly put forth (see the third principle below). Having the silent majority on your side is important when it comes time to make a decision: there may still be a few unhappy people, but the negative impact of their unhappiness will be limited if they can't find others sympathetic to their cause.





### Reciprocity



The third principle is arguably the most important of all but also the hardest to explain, and has to do with _reciprocity_. The guiding principle here is that you need to justify your decision in terms that others who disagree with you can potentially accept--in other words, do unto others as they would have you do unto them.

This is reminiscent of but not exactly the same as the [Golden Rule](http://en.wikipedia.org/wiki/Golden_Rule_%28ethics%29). It is also similar to [Karl Fogel's advice for dealing with holy wars](http://producingoss.com/html-chunk/common-pitfalls.html#holy-wars):



<blockquote>Even if you are positive your side is right, try to find some way to express sympathy and understanding for the points the other side is making. … [Show] that you understand the arguments they are making and find them at least sensible, if not finally persuasive.
</blockquote>



This approach is perhaps best illustrated through an example: Suppose I'm trying to justify the Mozilla security bugs policy to someone who strongly believes that vulnerabilities should be kept secret until fixed, or even forever if that were possible. I would _not_ argue that [security through obscurity](http://en.wikipedia.org/wiki/Security_through_obscurity) doesn't work, that it's bad for software vendors to hide security bugs, and that [full disclosure](http://en.wikipedia.org/wiki/Full_disclosure) is the best approach to making sure security bugs get fixed. Such an argument presumes acceptance of my values, not theirs.

Instead I might argue as follows: Some people reporting security bugs are not going to pay any attention to requests that information about vulnerabilities be kept confidential; if they want to spread the information to the world they'll do that no matter what our policy says and what we think of the matter. On the other hand, a lot of other people (perhaps even the majority of people out there finding and reporting vulnerabilities) are not so dogmatic: they would be willing to cooperate with us in keeping vulnerabilities confidential, at least for a limited time until fixes can be found.

However, they will be much more likely to be cooperative if their decision not to disclose is made freely and not coerced by us in any way, and would likely continue such cooperative behavior in any future interactions we might have. (See for example [Robert Cialdini](http://en.wikipedia.org/wiki/Robert_Cialdini)'s ideas regarding [commitment and consistency](http://raisedbyturtles.org/commitment-and-consistency/).) Therefore the right approach is to handle vulnerabilities in a confidential manner but explicitly provide an out for bug reporters who want to spill the beans if they believe it's necessary.

Such an argument respects the values of the person we're arguing with, as opposed to ignoring or (worse) denigrating those values. And that in turn increases the likelihood that the person will accept whatever decision we make--accept it grudgingly perhaps, but accept it nonetheless.

That's the first reason why the reciprocity principle is a good idea, but there are others. For example, acting in accordance with the reciprocity principle helps us more successfully play to the crowd as discussed above: Not only are we trying to make the decision-making process fair and open, we're paying respect to the opinions and values of others. This further lessens the possibility that those unhappy with the decision will be able to raise support for a counter-attack, e.g., by portraying us as non-benevolent dictators.

Finally, if we sincerely attempt to understand the values of others and formulate our arguments taking those values into account, in some cases it can lead to decisions that are better than those that might have been made by just proceeding from an initial set of personal (but presumed universal) values. In my opinion the Mozilla security bug policy was one such case: [Asa Dotzler](http://en.wikipedia.org/wiki/Asa_Dotzler) and/or Mitch Stoltz (I can't remember who) came up with the clever idea of having the bug reporter be able to pull the switch on disclosure, and I was happy to promote the idea because it could be justified on their own terms to people on both sides of the disclosure question.

(How to justify the security bug policy to proponents of full disclosure according to the reciprocity principle is left as an exercise for the reader. For hints see my blog post [Full disclosure: for and against](http://hecker.org/mozilla/full-disclosure).)



## Related topics and questions



This section takes up some topics and questions touching on the principles outlined above.



### Why not just vote?



In Producing Open Source Software [Karl Fogel advocates simply taking a vote](http://producingoss.com/html-chunk/consensus-democracy.html#voting) in cases where project members can't reach consensus. This seems a reasonable approach, and one consistent with our common-sense understanding of real-life politics. Why not just rely on voting to force a decision, as opposed to taking the relatively more complicated approach I advocate?





  * First, in order to take a vote you need to identify a set of potential voters, i.e., those who by virtue of their position are entitled to actually have a vote on the matter at hand. This is straightforward to do when a reasonably clear boundary divides those to whom you are accountable from those to whom you're not, and the group within that boundary is relatively homogeneous, with group members inclined to see one another as roughly co-equals. For example, these conditions are typically met for matters of concern primarily to the core contributors of a project, who often have to fulfill some formal shared criteria for membership, such as having a certain amount of project experience and being approved by existing core contributors.

However in many cases it's not very clear where such a boundary should be drawn, or that the people within such a boundary perceived others as co-equals. For example, suppose that for a particular decision you are accountable not just to core contributors but also to relatively casual contributors or even to end users who do not contribute at all. Should casual contributors or end users have a vote in the matter? If so, should their votes count equally with those of core contributors? The answers to such questions are not necessarily obvious, and render problematic a simplistic approach to voting as a way to resolve disputes.



  * Second, holding a vote presupposes that the outcome of such a vote will be respected, and this is turn presupposes that those overseeing the vote and enforcing the resulting decision are seen as legitimate leaders acting within a legitimate structure of governance. This is true in many open collaborative projects, but is not necessarily true in all of them.




For example, the [Apache project](http://www.apache.org/) was founded by a group of volunteers of roughly similar backgrounds and expertise, and that group developed a relatively formal [governance structure](http://www.apache.org/foundation/how-it-works.html), including a formal [voting mechanism](http://www.apache.org/foundation/voting.html), all under the auspices of the nonprofit [Apache Software Foundation](http://www.apache.org/foundation/). In such a context voting can be effective as a legitimate way to resolve disputes.

On the other hand, the Mozilla project began as a corporate-sponsored open source project with no formal governance structures, key participants (including most notably Mitchell Baker, but also myself) who were not part of the technical meritocracy viewed as core to open source projects, and perceived accountability not just to a technical elite but rather to a broad range of casual contributors and end users with widely different backgrounds and knowledge. In this environment resolving controversies by voting would arguably not have been nearly as straightforward or effective as it was in the Apache project.

It may turn out that putting questions to a vote may indeed turn out to be the best solution in the end, but getting to the point where such a vote can be held may require taking an approach like I've outlined above in order to ensure that such a vote is seen as legitimate and binding.



### The role of dissidents



Thus far I've written from the point of view of leaders of open collaborative projects who are trying to make and justify decisions in the face of disagreements. I think it's also useful to take a different perspective, namely that of the dissident who stands opposed to a leader's decision and actively campaigns against it.

Given my background in information security (such as it is), I find it fruitful to compare dissidents (whether inside or outside a project) to people who work to find and exploit security vulnerabilities in software and other complex systems: Both are in essence trying to break the system, both pursue it to a large degree as a personal challenge (in a spirit of opposition), and both often cross back and forth over the blurry line that separates constructive activities from others perceived as malicious.

If you happen to be a dissident, how can you be most effective in your activities? One way is simply to compile as many complaints and objections as you can think of, and repeat them over and over. Taken to an extreme this can amount to the political equivalent of [fuzz-testing](http://en.wikipedia.org/wiki/Fuzz_testing), and anyone who's spent any time watching public government meetings on local cable access channels has probably seen at least a few examples of it. However unlike software systems humans aren't fragile in the face of random input, and can quite easily shrug off random objections and proceed as if they had never been expressed.

An arguably better strategy for dissidents is to attack the system (i.e., the project leadership and its decisions) at points where it may be most vulnerable. In my opinion these points of vulnerability essentially correspond to those instances where project leaders have acted in ignorance of or opposition to the three principles of accountability, transparency, and reciprocity outlined above. These are exactly the points where dissidents are likely to find support among others who might share similar sentiments but aren't inclined to express them publicly.

Turning back to the perspective of project leaders, I believe that dissidents can play a critical role in ensuring a project's health in the long term, however annoying they might be in the near term. Just as people seeking out security vulnerabilities can force needed improvements to the security of software systems, effective dissidents can help identify areas where project leaders need to improve the process of making decisions. By helping to force improvements related to transparency, accountability, and reciprocity, good dissidents help make good leaders who are better at making and justifying decisions in the fact of community disagreement.

As Mena Trott implied in a blog post commenting on [listening to customers](http://www.sixapart.com/about/corner/2005/11/typepad_update.html), under the skin of many a fierce critic beats the heart of someone who's extremely passionate about what they're criticizing. That's why I think it's important to respect those who dissent and make an effort to seriously address their concerns, to the extent that they can be addressed; as with people who find and report security bugs, it's more productive to have them criticizing from the inside than from the outside. They'll never be blind cheerleaders for the project, but then that's not what you want them to be or need them to be.



## Conclusion, and a note on sources



So that's it: my personal take on how to deal with disagreements within open collaborative projects and effectively make potentially unpopular decisions. If you're still reading this I hope it was of at least some interest and usefulness to you, whether as a leader in such a project, a participant, or just an interested observer.

As I briefly mentioned above, pretty much everything I've written here is an adaptation of ideas I found elsewhere, and in particular in the book [Democracy and Disagreement](http://www.amazon.com/exec/obidos/redirect?link_code=as2&path=ASIN/0674197666&tag=frankhecker-20&camp=1789&creative=9325) by [Amy Gutmann](http://en.wikipedia.org/wiki/Amy_Gutmann) and [Dennis Thompson](http://en.wikipedia.org/wiki/Dennis_Frank_Thompson). Their ideas were formulated in the context of (US) politics, but they suggest that the same ideas could be applied in other contexts as well--a comment that got me thinking about applying them in the context of Mozilla and other open collaborative projects.

In fact, I would argue that their approach is actually much more applicable to open collaborative projects than to traditional politics (or to almost any other type of community, for that matter). Briefly, to be truly successful open collaborative projects need to attract as wide a following as possible, since such projects rely to a large degree on casual contributors to perform vital tasks such as reporting and fixing bugs or other defects, making incremental improvements to products, promoting product adoption, and so on.

However such projects cannot rely on the coercive power of the state or the monetary incentives of a corporation to enforce group cohesion and the acceptance of potentially unpopular decisions. Also, it's more likely that participants in an open collaborative project have similar technical interests and competencies than that they all share the same values (as would be the case in a religious community or similar voluntary associations).

Therefore in order to scale to a size necessary to do truly significant things (like develop and promote [useful high-quality mass market software](http://www.mozilla.com/firefox/)) an open collaborative project is going to have to face and overcome the problem of making and enforcing decisions on important and potentially divisive issues in a way that does not drive valuable contributors out of the project (or discourage potentially valuable contributors from joining) but instead promotes the project as a hospitable environment where people with different values can work together to do interesting and exciting things. In my opinion this is a problem that the Gutmann/Thompson approach is uniquely well situated to address.

By contrast, in traditional politics a majority (even a very slim one) can quite often override a minority with minimal or no consequences. This doesn't even necessarily require coercive force; it simply suffices that people in the minority have ties of family, work, etc., to their country or other political unit that make it difficult or counter-productive for them to remove themselves from the rule of the majority, however oppressive it might be. Hence in practice most political leaders have no real need or incentive to employ Gutmann and Thompson's recommendations in any substantive way.

Anyway, enough already. If you're interested in further exploring these ideas feel free to seek out Gutmann and Thompson's book. It can be tough going if you're not into political philosophy, but you can skim the first two or three chapters to pick up the most important points. If you have a real taste for this sort of thing you might also want to look at [Deliberative Politics: Essays on Democracy and Disagreement](http://www.amazon.com/gp/redirect.html?link_code=ur2&tag=frankhecker-20&camp=1789&creative=9325&location=http%3A%2F%2Fwww.amazon.com%2Fgp%2Fproduct%2F0195131991), a compilation of essays discussing Gutmann and Thompson's ideas.

