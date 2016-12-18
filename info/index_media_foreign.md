---
title: Foreign Media
excerpt: Foreign Media Listing
layout: info
categories: []
tags: []
published: true
permalink: /info/media_foreign/index.html
---

{% assign list = site.data.media_foreign %}

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>{{ page.title }}</h1>
    
    <p>&nbsp;</p>
    <p class="excerpt">This is a list of common foreign media.</p>
        
    {% assign show_items = "" | split: "" %}
    {% assign show_items = show_items | push: "description" %}
    
    <div class="section_container ">
        {% include block_list.html posts=list show=show_items counter="yes" entry_class="bottom_margin_10" %}
    </div>
</div>
