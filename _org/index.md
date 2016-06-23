---
title: Organizations
excerpt: List of organizations
layout: post
categories: [org]
tags: []
published: true
---

<ul>
{% for item in site.org %}
    {% if item.url != page.url %}
    <li>
        <a href="{{ item.url }}">{{ item.title }}</a>
    </li>
    {% endif %}
{% endfor %}
</ul>
