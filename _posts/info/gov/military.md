---
title: Armed Forces of the Philippines
excerpt: 
layout: info
categories: []
tags: []
published: true
permalink: /info/gov/military.html
---

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Government: Armed Forces of the Philippines</h1>
    
    <p>&nbsp;</p>
    <p class="excerpt">{{ site.data.government.branch[5].description }}</p>

    {% assign show_items = "" | split: "" %}
    {% assign show_items = show_items | push: "head" %}
    
    <div class="section_container">
        {% assign list = site.data.government.branch[5].heads %}
        {% include block_list.html posts=list show=show_items entry_class="bottom_margin_10" %}
    </div>
    
    <div class="section_container">
        <h1>Service Branch</h1>
        {% assign list = site.data.government.branch[5].branch %}
        {% include block_list.html posts=list show=show_items counter="yes" entry_class="bottom_margin_10" %}
    </div>

 </div>
