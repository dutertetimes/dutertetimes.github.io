---
title: Government
excerpt: Philippine Government
layout: info
categories: [government]
tags: []
published: true
---

Duterte Times is in the process of collecting and building its database.
You may check out what we have for now.

## Executive

{% for item in site.gov %}
    {% if item.url != page.url %}
        {% if item.branch == "executive" %}
* [{{ item.title }}]({{ item.url }})
        {% endif %}
    {% endif %}
{% endfor %}

## Legislative

{% for item in site.gov %}
    {% if item.url != page.url %}
        {% if item.branch == "legislative" %}
* [{{ item.title }}]({{ item.url }})
        {% endif %}
    {% endif %}
{% endfor %}

## Judiciary

{% for item in site.gov %}
    {% if item.url != page.url %}
        {% if item.branch == "judiciary" %}
* [{{ item.title }}]({{ item.url }})
        {% endif %}
    {% endif %}
{% endfor %}
