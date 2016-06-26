---
title: Sources
excerpt: Online sources of information
layout: info
categories: [sources]
tags: []
published: true
---

{% for item in site.sources %}
    {% if item.url != page.url %}
* [{{ item.title }}]({{ item.url }})
    {% endif %}
{% endfor %}
