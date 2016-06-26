---
title: Sources
excerpt: Online sources of information
layout: info
categories: [sources]
tags: []
published: true
---

<ul>
{% for item in site.sources %}
    {% if item.url != page.url %}
    <li>
        <a href="{{ item.url }}">{{ item.title }}</a>
    </li>
    {% endif %}
{% endfor %}
</ul>
