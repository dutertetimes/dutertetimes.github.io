---
title: Information Index
excerpt: List of information categories
layout: info
categories: [info]
tags: []
published: true
permalink: /info/index.html
---

<div class="section_container_wrapper section_container_wrapper_border bottom_margin_10">
    <h1>{{ page.title }}</h1>
    <div class="section_container top_margin_10 bottom_margin_10">
        {% assign section_posts = "" | split: ',' %}
        {% for item in site.data.info_sections %}
            {% if item.title != "" and item.index == "yes" %}
                {% assign section_posts = section_posts | push: item %}
            {% endif %}
        {% endfor %}
        {% include block_list.html posts=section_posts counter="yes" %}
    </div>
</div>
