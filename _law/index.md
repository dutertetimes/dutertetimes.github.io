---
title: Law
excerpt: List of Philippine laws
layout: post
categories: [law]
tags: []
published: true
---

{% if site.law == 0 %}
No entries.
{% else %}
    {% for item in site.law %}
        {% if item.url != page.url %}
* [{{ item.title }}]({{ item.url }})
        {% endif %}
    {% endfor %}
{% endif %}