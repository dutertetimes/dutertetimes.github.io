---
title: Government of the Republic of the Philippines
excerpt: Government Site Listing
layout: info
categories: []
tags: []
published: true
---

<p>{{ page.cagetories }}</p>
<div class="section_container_wrapper section_container_wrapper_border bottom_margin_10">
    <h1>{{ page.title }}</h1>
    <p>&nbsp;</p>
    <p class="excerpt">{{ site.data.government.description }}</p>
    <ul>
        <li><a href="{{ site.data.government.links[0].url }}" class="no_underline">{{ site.data.government.links[0].name }}</a></li>
    </ul>
    
    <div class="section_container top_margin_10 bottom_margin_5">
        {% assign show_items = "" | split: "" %}
        {% assign show_items = show_items | push: "head" %}
        {% assign show_items = show_items | push: "description" %}
        
        {% assign list = site.data.government.branch %}
        {% include block_default.html posts=list show=show_items entry_class="bottom_margin_10" %}
        
        {% comment %}
        {% for post in branches %}
        <div class="container">
            {% include block_list.html post=post %}
            
            <p><a href="{{ post.link | downcase }}">Go to the {{ post.title | capitalize }} page.</a></p>
        </div>
        {% endfor %}
        {% endcomment %}
    </div>
</div>
