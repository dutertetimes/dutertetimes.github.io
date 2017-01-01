---
title: Commissions
excerpt: 
layout: info
categories: []
tags: []
published: true
---

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Government: Constitutional Commissions</h1>
    
    <p>&nbsp;</p>
    {% if site.data.government.branch[3].description %}
    <p class="excerpt">{{ site.data.government.branch[3].description }}</p>
    {% endif %}
    
    {% assign show_items = "" | split: "" %}
    {% assign show_items = show_items | push: "head" %}
    
    <div class="section_container">
        <h1>Constitutional Commissions</h1>
        {% assign list = site.data.government.branch[3].commissions %}
        {% include block_list.html posts=list show=show_items counter="yes" entry_class="bottom_margin_10" %}
    </div>
    <div class="section_container">
        <h1>Other Commissions</h1>
        {% assign list = site.data.government.branch[3].others %}
        {% include block_list.html posts=list show=show_items counter="yes" entry_class="bottom_margin_10" %}
    </div>
</div>
