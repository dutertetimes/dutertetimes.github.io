---
title: Government
excerpt: Philippine Government
layout: post
categories: [people]
tags: []
published: true
---

Duterte Times is in the process of collecting and building its database.
You may check out what we have for now.

<ul>
{% for item in site.gov %}
    {% if item.url != page.url %}
    <li>
        <a href="{{ item.url }}">{{ item.title }}</a>
    </li>
    {% endif %}
{% endfor %}
</ul>
