---
title: Judiciary Branch
excerpt: 
layout: info
categories: []
tags: []
published: true
permalink: /info/gov/judiciary.html
---

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Government: Judiciary</h1>
    
    <p>&nbsp;</p>
    <p class="excerpt">{{ site.data.government.branch[2].description }}</p>
    
    {% assign show_items = "" | split: "" %}
    {% assign show_items = show_items | push: "head" %}
    
    <div class="section_container">
        {% assign list = site.data.government.branch[2].heads %}
        {% include block_list.html posts=list show=show_items entry_class="bottom_margin_10" %}
    </div>
    
    <div class="section_container">
        <h1>Committees</h1>
        {% assign list = site.data.government.branch[2].courts %}
        {% include block_list.html posts=list show=show_items counter="yes" entry_class="bottom_margin_10" %}
    </div>
</div>
