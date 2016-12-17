---
title: Constitutional Commissions
excerpt: 
layout: info
categories: []
tags: []
published: true
---

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Government: Constitutional Commissions</h1>
    
    <p>&nbsp;</p>
    <p class="excerpt">{{ site.data.government.branch[3].description }}</p>
    
    <div class="section_container top_margin_10">
        <h1>Commissions</h1>
        {% assign list_posts = site.data.government.branch[3].commissions %}
        {% include gov_list.html posts=list_posts %}
    </div>
</div>
