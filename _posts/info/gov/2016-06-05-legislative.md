---
title: Legislative Branch
excerpt: Legislative Branch
layout: info
categories: []
tags: []
published: true
permalink: /info/gov/legislative.html
---

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Government: Legislative</h1>
    
    <p>&nbsp;</p>
    <p class="excerpt">{{ site.data.government.branch[1].description }}</p>
    
    {% assign show_items = "" | split: "" %}
    {% assign show_items = show_items | push: "head" %}
    
    <div class="section_container">
        {% assign list = site.data.government.branch[1].heads %}
        {% include block_list.html posts=list show=show_items entry_class="bottom_margin_10" %}
    </div>
    
    <div class="section_container">
        <h1>Committees</h1>
        {% assign list = site.data.government.branch[1].committees %}
        {% include block_list.html posts=list show=show_items counter="yes" entry_class="bottom_margin_10" %}
    </div>
</div>
