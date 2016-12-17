---
title: Laws
excerpt: List of Laws
layout: info
categories: []
tags: []
published: true
permalink: /info/law/index.html
---

{% assign todo_data = site.data.info_law %}
{% assign posts = site.info_law | sort: "title" %}
{% include info_index.html title=page.title todo_data=include.todo_data posts=posts %}
