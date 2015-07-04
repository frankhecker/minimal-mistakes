---
comments: false
date: 2008-12-11 05:03:56+00:00
layout: post
slug: machine-verified-formal-mathematical-proofs
title: Machine-verified formal mathematical proofs
tags:
- mozilla
---

A departure from my usual topics, in remembrance of my college math classes (and with a nod to Mozilla folks working on related areas like automated testing and software verification): Via [Eric Drexler](http://metamodern.com/2008/11/10/26/) via [Emergent Chaos](http://www.emergentchaos.com/archives/2008/12/eric_drexler_blogging.html) comes this interesting [review paper on formal proofs in mathematics](http://www.ams.org/notices/200811/tx081101370p.pdf) and  software to verify them.

As a dual math/physics major I was well acquainted with jokes about the lack of mathematical rigor on the part of physicists, who often engaged in rather slapdash simplifications in their drive to get formulas they could use to explain experimental data and make further predictions. However physicists who cut corners are ultimately saved by the fact that nature will check their work and let them know if they've made bonehead mistakes.

On the other hand mathematicians traditionally have had only other mathematicians to save them from errors, and most mathematicians find it more personally and professionally rewarding to do their own original work instead of verifying that of others. Enter computers, which are happy to do such relatively mindless tasks. Of course the catch is that you have to instruct them in how to do this, and like conventional programming this requires specifying the task at hand in excruciating detail, including all the steps that mathematicians leave out in conventional proofs (marked by phrases like "we can clearly see that...").

Read the paper for how this is done; it's pretty comprehensible even if (like me) you've forgotten almost all your college math. My favorite bit of the paper (speaking of the [HOL Light theorem prover](http://www.cl.cam.ac.uk/~jrh13/hol-light/)):



<blockquote>All the basic theorems of mathematics up through the [Fundamental Theorem of Calculus](http://en.wikipedia.org/wiki/Fundamental_theorem_of_calculus) are proved from scratch on the user’s laptop in about two minutes every time the system loads, so that the casual user does not need to be concerned with the low-level details.</blockquote>



In other words, it's booting mathematics! And like conventional booting, people still get impatient; the [HOL LIght tutorial](http://www.cl.cam.ac.uk/~jrh13/hol-light/tutorial_220.pdf) describes how to cheat and checkpoint the system so you can skip the boring stuff.

I was also enchanted by the fact that multiple theorem provers have been developed, and mathematicians in different countries have their own favorite systems. Thus they replicate in cyberspace the traditional national styles (English, French, German, Hungarian, etc.) of mathematics. However it turns out that this is actually useful and not wasted work, as the different theorem provers can check each others' efforts and thus increase confidence in their underlying correctness.

Finally, a lot of these systems are [released as free and open source software](http://en.wikipedia.org/wiki/Automated_theorem_proving#Free_software), so if you want to try your hand at [formalizing some famous theorems](http://www.cs.ru.nl/~freek/100/) everything you need is just a download away.

