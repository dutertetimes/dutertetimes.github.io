---
title: Foreign Media Sources
excerpt: Foreign Media Listing
layout: info
categories: []
tags: []
published: true
---

{% assign entries = site.data.media_foreign %}
<div class="section_container">
<div class="container">
<div class="block block_default_fonts">
    {% comment %}
    <h1>Foreign Media</h1>
    {% endcomment %}
    <div class="entries">
        {% for entry in entries %}
        <div class="entry">
            <h2><a href="{{ entry.link[0].url }}">{{ entry.name }}</a></h2>

            {% if site.development and entry.description %}
            <p class="excerpt">{{ entry.description }}</p>
            {% endif %}

            <ul>
            {% if entry.link.size and entry.link.size > 1 %}
                {% for linkitem in entry.link offset: 1%}
                <li><a href="{{ linkitem.url }}" class="no_underline">{{ linkitem.label }}</a></li>
                {% endfor %}
            {% endif %}
            </ul>
        </div>
        {% endfor %}
    </div>
</div>
</div>
</div>
