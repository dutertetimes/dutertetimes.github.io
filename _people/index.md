---
title: People
excerpt: List of people
layout: post
categories: [people]
tags: []
published: true
---

<ul>
{% for item in site.people %}
    {% if item.url != page.url %}
    <li>
        <a href="{{ item.url }}">{{ item.title }}</a>
    </li>
    {% endif %}
{% endfor %}
</ul>
