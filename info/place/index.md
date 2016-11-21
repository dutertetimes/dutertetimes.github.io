---
title: Places
excerpt: List of places
layout: info
categories: []
tags: []
published: true
---

{% assign todo_data = site.data.info_place %}
{% assign posts = site.info_place | sort: "title" %}
{% include info_index.html title=page.title todo_data=include.todo_data posts=posts %}
