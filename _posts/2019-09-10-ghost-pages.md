---
layout: post
title: Ghost pages
date: 2019-09-10 11:13:00 -05:00
description: "The updates I'm going to be sharing lately will mostly be for the projects I'm working on."
image: assets/images/pic03.jpg
excerpt_separator: <!--more-->
---

The updates I'm going to be sharing lately will mostly be for the projects I'm working on. Which in this case, will just be the current website and also the [Nutter Home Designs](https://www.nutterhomedesigns.com) website. Sometime in the near future, I'm going to be working on<!--more--> some Ruby on rails apps so I'll share those as I'm working through them. 

When I first setup this website, I was given a few pages to start off with, such as an `index.md` page, an `elements.md` page, and a `landing.md` page. The `elements.md` page is just a resource to tell you what styles, fonts, and colors were used on the website. The `landing.md` page is there as a reference to see how the pages are layed out--I think.

So anyways, I added an about page and saw that it displayed on the index page as a tile. I tried to add a new page for projects but didn't see it display. In an effort to try and get the page up, I quickly edited the elements page to say what I wanted it to say and then continued getting the rest of the website setup. 

Last night, I decided to circle back and get things sorted out with the elements page. The first thing I tried to do is rename the elements file to projects, but that didn't work. It displayed an empty tile that linked directly to the site's main CSS file. 

Afterwards, I renamed the file back to elements and then dug through all of the `_layouts` folders, and `_includes` folders in the project. There was no noticeable reference to the elements file. I was perplexed. 

Eventually, I created a brand new projects file. Copied the contents of the elements file to the projects file. Updated the frontmatter in the projects file and bingo, I could now see the tile appear on the index page. BUT, the old elements tile also displayed. Definitlely getting closer here, but was beyond confused.

With this project, the creator added a couple of options in the frontmatter for pages and posts which gave the option to `show_tile: true/false` and `show-nav: true/false`. I changed the frontmatter on the elements page to `false` for both, and then set to `true` on the projects page. Refreshed the index page, and noticed some improvement. The elements page was removed from the top navigation, but displayed as a blank space on the index page. 

Ok, I'm getting closer. I started looking at other files in the `_includes` folder to see how they were coded. There's a conditional block at the top of this page that loops through all of the pages and posts, and then displays them if they're anything but `false`. That's weird. Here's an example of what it looked like: 

`for post in site.posts limit:site.tiles-count`
  `if site.tiles-source == 'posts' and post.show_tile != false` 

It seems like this should do the trick if the `show_tile` frontmatter was not set as `false`, but that's not the case here for some reason. So I changed the logic to only look at `true`. Hit refresh on the webpage, and *BOOM*, it worked. I can now see the correct tiles display on the index page. What a relief. Who knew it was just a logic thing. 

The next update I want to make is adding some additional images/icons to the website, but I haven't exactly decided on how I want to do that, and what images those will be. Stay tuned. 