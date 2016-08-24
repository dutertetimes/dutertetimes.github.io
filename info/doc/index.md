---
title: Papers and Documents
excerpt: Papers and Documents Index
layout: hub
categories: []
tags: []
published: true
---

{% if site.development %}
<div class="block block_default_fonts">
    <h1>TODO</h1>
    <div class="entries">
    {% if site.data.info_doc.size and site.data.info_doc.size > 0 %}
        {% for post in site.data.info_doc %}
        <div class="entry">
            <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
            <p class="date">{{ post.date | date: site.data.format.date_only }}</p>
            <p class="excerpt">{{ post.excerpt }}</p>
            <p class="category">Categories:&nbsp;{{ post.categories | join: ", "}}</p>
            <p class="tag">Tags:&nbsp;{{ post.tags | join: ", " }}</p>
            {% if post.link.size and post.link.size == 1 %}
            <p>Link:&nbsp;<a href="{{ post.link[0].url }}" class="no_underline">{{ post.link[0].url }}</a></p>
            {% else %}
            <p>Links:</p>
            <ul>
                {% for linkitem in post.link %}
                {% if linkitem.excerpt %}
                <li><a href="{{ linkitem.url }}" class="no_underline">{{ linkitem.excerpt }}</a></li>
                {% else %}
                <li><a href="{{ linkitem.url }}" class="no_underline">{{ linkitem.url }}</a></li>
                {% endif %}
                {% endfor %}
            </ul>
            {% endif %}
        </div>
        {% endfor %}
    {% else %}
        <p class="no_entries">There are no pending information to add.</p>
    {% endif %}
    </div>
</div>
{% endif %}

<div class="block block_default_fonts">
    <h1>{{ page.title }}</h1>
    <div class="entries">
    {% for post in site.categories['info_doc'] limit:20 %}
        <div class="entry">
            <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
            <p class="date">{{ post.date | date: site.data.format.date_only }}</p>
            <p class="excerpt">{{ post.excerpt }}</p>

            {% if site.development %}
            <p class="category">Categories:&nbsp;{{ post.categories | join: ", "}}</p>
            <p class="tag">Tags:&nbsp;{{ post.tags | join: ", " }}</p>
            {% endif %}
        </div>
    {% endfor %}
    </div>
</div>
