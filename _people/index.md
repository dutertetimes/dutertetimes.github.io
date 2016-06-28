---
title: People
excerpt: List of people
layout: post
categories: [people]
tags: []
published: true
---

|------|------|
| Name | Link |
|------|------|
{% for item in site.people %} {% if item.url != page.url %} {{ item.title }} | [Link]({{ item.url }})
{% endif %} {% endfor %}
