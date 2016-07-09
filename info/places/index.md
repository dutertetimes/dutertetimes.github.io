---
title: Places
excerpt: List of places
layout: info
categories: []
tags: []
published: true
---

|------|------|
| Name | Link |
|------|------|
{% for item in site.categories['places'] %} {{ item.title }} | [Link]({{ item.url }}) |
{% endfor %}
