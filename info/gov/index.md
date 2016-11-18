---
title: Government of the Republic of the Philippines
excerpt: Government Site Listing
layout: info
categories: []
tags: []
published: true
---

<div class="gov_definition">
{% assign gov = site.data.gov | where: "branch", "gov" %}
{% for entry in gov %}
<p>{{ entry.description }}</p>
<ul>
    {% if entry.link.size and entry.link.size == 1 %}
    <li><a href="{{ entry.link[0].url }}" class="no_underline">{{ entry.link[0].label }}</a></li>
    {% else %}
        {% for linkitem in entry.link %}
    <li><a href="{{ linkitem.url }}" class="no_underline">{{ linkitem.label }}</a></li>
        {% endfor %}
    {% endif %}
</ul>
{% endfor %}
</div>

<div class="section_container container_top_margin_10 container_bottom_margin_5">
{% assign branches = site.data.gov | where: "described", "yes" %}
    {% for branch in branches %}
    {% if forloop.last %}
    <div class="container">
    {% else %}
    <div class="container container_right_margin_20">
    {% endif %}
        <div class="block block_default_fonts">
            <div class="entries">
                <div class="entry">
                    <h2><a href="/info/gov/{{ branch.branch }}/">{{ branch.branch | capitalize }}</a></h2>
                    <p>{{ branch.description }}</p>
                </div>
            </div>
        </div>
    </div>
    {% endfor %}
</div>
