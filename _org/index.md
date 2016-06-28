---
title: Organizations
excerpt: List of organizations
layout: post
categories: [org]
tags: []
published: true
---

|------|------|
| Name | Link |
|------|------|
{% for item in site.org %} {% if item.url != page.url %} {{ item.title }} | [Link]({{ item.url }})
{% endif %} {% endfor %}
