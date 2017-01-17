---
title: Topics
excerpt: Topic Index
layout: hub
categories: []
tags: []
published: true
permalink: /topic/index.html
---

{% assign found_topics = "opinion" | split: ',' %}
{% for post in site.categories.topic %}
    {% assign found_topics = found_topics | push: post.categories[1] %}
{% endfor %}
{% assign found_topics = found_topics | uniq %}

{% assign counter = 1 %}

<div class="section_container_wrapper section_container_wrapper_border bottom_margin_10">
    <h1>{{ page.title }}</h1>
    <div class="section_container top_margin_10 bottom_margin_10">
        <div class="block block_default_fonts">
            <div class="entries">
                {% for topic in found_topics %}
                <div class="index_entry">
                    <h2 class="indexed"><span>{{ counter }}</span><a href="{{ post.url }}">{{ topic }}</a></h2>
                    {% assign counter = counter | plus: 1 %}
                </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>


{% assign todo_data = site.data.todo_opinion %}
{% include section_index.html data=todo_data category="opinion" post_image="post_opinion_16_9.png" %}
