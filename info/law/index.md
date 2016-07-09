---
title: Law
excerpt: List of Laws
layout: info
categories: []
tags: []
published: true
---

|------|------|
| Name | Link |
|------|------|
{% for item in site.categories['law'] %} {{ item.title }} | [Link]({{ item.url }}) |
{% endfor %}
