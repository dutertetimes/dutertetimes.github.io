---
title: Government
excerpt: Philippine Government
layout: info
categories: [government]
tags: []
published: true
permalink: 
---

Duterte Times is in the process of collecting and building its database.
You may check out what we have for now.

## Executive

|------|------|
| Name | Link |
|------|------|
{% for item in site.gov %} {% if item.url != page.url %} {% if item.branch == "executive" %} {{ item.title }} | [Link]({{ item.url }})
{% endif %} {% endif %} {% endfor %}

## Legislative

|------|------|
| Name | Link |
|------|------|
{% for item in site.gov %} {% if item.url != page.url %} {% if item.branch == "legislative" %} {{ item.title }} | [Link]({{ item.url }})
{% endif %} {% endif %} {% endfor %}

## Judiciary

|------|------|
| Name | Link |
|------|------|
{% for item in site.gov %} {% if item.url != page.url %} {% if item.branch == "judiciary" %} {{ item.title }} | [Link]({{ item.url }})
{% endif %} {% endif %} {% endfor %}
