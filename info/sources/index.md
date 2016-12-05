---
title: News Sources
excerpt: List of news sources
layout: info
categories: []
tags: []
published: true
---

{% assign counter = 1 %}

<div class="section_container_wrapper section_container_wrapper_border bottom_margin_10">
    <h1>{{ page.title }}</h1>
    <div class="section_container top_margin_10 bottom_margin_10">
        <div class="block block_default_fonts">
            <div class="entries">
        {% for post in site.data.info_sources %}
            {% if post.development %}
                {% continue %}
            {% endif %}
                <div class="index_entry">
                    <h2 class="indexed"><span>{{ counter }}</span><a href="{{ post.link[0].url }}">{{ post.title }}</a></h2>
                    {% assign counter = counter | plus: 1 %}
                </div>
        {% endfor %}
            </div>
        </div>
    </div>
</div>
