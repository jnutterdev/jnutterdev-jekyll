---
layout: post
title: DKIM signing
date: 2020-05-27 19:28:00 -05:00
description: ""
image: assets/images/pic20.jpg
published: false
excerpt_separator: <!--more-->
---

Topics to cover
BIMI
DKIM 
SPF
DMARC

Recently I went down a rabbit hole that lead me to learning more about SPF, DKIM, and DMARC. While there are a lot of resources that cover the benefit of setting these up, there's still some infomration that is not quite as readily available. Here's what I learned on my quest. 

It all started out when I was looking through my inbox at emails, and wondered how some companies could display an image next to their from name. After doing a bit of searching around, I stumbled across an article on [BIMI](https://www.dmarcanalyzer.com/how-to-implement-bimi-record/), or Brand Indicators for Message Identification. To set this up, the article mentioned that the sending domain must have SPF, DKIM, and DMARC enabled first. I work in technical support for an email delviery company, so I have some famiiliariaty with SPF/DKIm already. One of my personal addresses I use outside of work already has DMARC setup. I really wanted to test out sending from my server,though, rather than work tools. 

One thing that that occurred to me is that I will also need to setup DKIM on my personal server so that the messages are signed when sending them out. I started to read around on implementing DKIM. This requires a public key to be referenced in a DKIM record, and a private key to be stored on your server for authentication. There are plenty of resource that walk through how to create a public key, and even some that walk through how to create the private key. Where lies my confusion is where exactly the private key is stored on my server. I looked to my hosting provider for answers. In their knowledge base, there were some notes that DKIM and ARC signing were available. So I thought, "Ok, great. I'll just go ahead and create the DKIM record and then add the private key in the server later." 

In my DNS panel, I add the DKIM key and save it. Just as an experiment, I thought I would send an email to see what would happen. I thought maybe my emails will still pass since SPF passes, and DMARC only requires either SPF or DKIM to pass. Nope. I sent a test to a gmail.com address, and the message went straight to junk. "Sorry, we couldn't verify sending from the domain". Just for comparison, I have a separate email address with DMARC and an SPF record, and no DKIM record. Pretty much the same settings minus DKIM. I sent an email to gmail, and it passed. My suspicions were confirmed. 

So I sent an email to my hosting provider and asked what was up with DKIM signing. DKIM signing hasn't been rolled out yet as they are running into some issues getting the kinks worked out. Great. At this point, I decided to delete the DKIM record from my DNS panel and continue sending with out it. Instead of deleting it, there was some sort of bug in the control panel that duplicated the record. I reached back out to the hosting provider to let them know, and they removed both records without any explanation--not sure if it was them, or the 2048 bit key length I used, or maybe the way the value was copied into the control panel? Who knows. 

Afterwards, I sent another test email to gmail and hey, presto, the email landed in the inbox. 


