---
title: People
excerpt: List of people
layout: info
categories: []
tags: []
published: true
---

|------|------|
| Name | Link |
|------|------|
{% for item in site.categories['people'] %} {{ item.title }} | [Link]({{ item.url }}) |
{% endfor %}
