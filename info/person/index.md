---
title: People
excerpt: List of people
layout: info
categories: []
tags: []
published: true
---

{% assign todo_data = site.data.info_person %}
{% assign posts = site.info_person | sort: "title" %}
{% include info_index.html title=page.title todo_data=include.todo_data posts=posts %}
