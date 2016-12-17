---
title: Executive Branch
excerpt: 
layout: info
categories: []
tags: []
published: true
---

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Government: Executive</h1>
    
    <p>&nbsp;</p>
    <p class="excerpt">{{ site.data.government.branch[0].description }}</p>
    
    <div class="section_container top_margin_10">
        {% assign list_posts = site.data.government.branch[0].heads %}
        {% include gov_list.html posts=list_posts %}
    </div>
    
    <div class="section_container top_margin_10">
        <h1>Cabinet</h1>
        {% assign list_posts = site.data.government.branch[0].departments %}
        {% include gov_list.html posts=list_posts %}
    </div>
    
    <div class="section_container top_margin_10">
        <h1>Cabinet-Level</h1>
        {% assign list_posts = site.data.government.branch[0].cabinet_level %}
        {% include gov_list.html posts=list_posts %}
    </div>
</div>
