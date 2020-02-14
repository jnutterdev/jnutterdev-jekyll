---
layout: post
title: Library not found
date: 2020-02-13 21:59:00 -05:00
description: "It's been awhile since I've worked on any projects lately, so I decided that if I start writing about a project it will get me back into the swing of things."
image: assets/images/pic20.jpg
excerpt_separator: <!--more-->
---

It's been awhile since I've worked on any projects lately, so I decided that if I start writing about a project it will get me back into the swing of things. I didn't have the repo cloned or this site, so the first thing I did was pull it down from github. 
<!--more-->

Next, I tried to fire up jekyll. I get an error, "library not found for class Digest::SHA2 -- digest/sha2 (LoadError)". Crap. What is that all about? Nothing has really changed since my last post, what gives? 

I searched around for a little while, but stack overflow was letting me down. Some folks were saying to try this thing or edit that module. A lot of things that didn't really seem relevant to my situation. Just to see if it may have been specific to my versions of ruby, I tried using an older version with rbenv. No luck. I get a host of other errors. 

Finally, I did the only sensible thing I can think of. rbenv uninstall ruby 2.5.1. Afterwards, I re-installed jekyll and bundler. Updated my gems. Ran bundle install. Lo and behold, it works! I was so relieved. 

Now that I have a working jekyll setup, expect more posts to come in the near future. I'm going to be looking into a few different projects, either with ruby on rails or flask. Stay tuned. 