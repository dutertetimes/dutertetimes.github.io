---
title: People
excerpt: List of people
layout: info
categories: []
tags: []
published: true
---

<ol class="info_list">
{% for item in site.categories.people %}
<li><a href="{{ item.url }}">{{ item.title }}</a></li>
{% endfor %}
</ol>
