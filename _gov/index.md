---
title: Government
excerpt: Philippine Government
layout: post
categories: [people]
tags: []
published: true
---

<ul>
{% for item in site.gov %}
    {% if item.url != page.url %}
    <li>
        <a href="{{ item.url }}">{{ item.title }}</a>
    </li>
    {% endif %}
{% endfor %}
</ul>
