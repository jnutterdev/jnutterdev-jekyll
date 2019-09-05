---
layout: page
title: Projects
description: What I am working on
nav-menu: true
# image: "assets/images/pic14.png"
---
<!-- Main -->
<div id="main" class="alt">

    <!-- One -->
    <section id="one">
        <div class="inner">
            <header class="major">
                <h1>Projects</h1>
            </header>
            <article>{% for post in site.posts %}
                    <span class="image">
                      <img src="{{ post.image }}" alt="" />
                    </span>
                    <header class="major">
                      <h3><a href="{{ post.url  | relative_url }}" class="link">{{ post.title }}</a></h3>
                      <p>{{ post.date | date: "%b %-d, %Y %-I:%M %P" }}</p>
                      <p>{{ post.excerpt }}</p>
                    </header>{% endfor %}
                  </article>
        </div>
    </section>
</div>
