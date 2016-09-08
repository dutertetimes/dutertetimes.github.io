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

<div class="branch_definition">
{% assign branches = site.data.gov | where: "described", "yes" %}
<div class="block block_default_fonts">
    <div class="entries">
    {% for branch in branches %}
        <div class="entry">
            <h2>{{ branch.branch | capitalize }}</h2>
            <p>{{ branch.description }}</p>
        </div>
    {% endfor %}
    </div>
</div>
</div>

<div class="section_container">
    <div class="left_container">
    {% include gov_list.html branch="executive" branch_name="Executive" %}
    </div>

    <div class="mid_container">
    {% include gov_list.html branch="legislative" branch_name="Legislative" %}
    </div>

    <div class="right_container">
    {% include gov_list.html branch="judiciary" branch_name="Judiciary" %}
    </div>
</div>

{% comment %}


{% assign legislative = site.data.gov | where: "department", "legislative" %}
<div class="block sub_block block_default_fonts">
    <h1>Legislative</h1>
    <div class="entries">
        {% for entry in legislative %}
        <div class="entry">
            <h2><a href="{{ entry.url }}.html">{{ entry.name }}</a></h2>

            {% if post.excerpt %}
            <p class="excerpt">{{ entry.excerpt }}</p>
            {% endif %}

            <ul>
                {% if entry.link.size and entry.link.size == 1 %}
                <li><a href="{{ entry.link[0].url }}" class="no_underline">{{ entry.link[0].label }}</a></li>
                {% else %}
                    {% for linkitem in entry.link %}
                <li><a href="{{ linkitem.url }}" class="no_underline">{{ linkitem.label }}</a></li>
                    {% endfor %}
                {% endif %}
            </ul>
        </div>
        {% endfor %}
    </div>
</div>
</div>

<div class="right_container">
{% assign judiciary = site.data.gov | where: "department", "judiciary" %}
<div class="block sub_block block_default_fonts">
    <h1>Judiciary</h1>
    <div class="entries">
        {% for entry in judiciary %}
        <div class="entry">
            <h2><a href="{{ entry.url }}.html">{{ entry.name }}</a></h2>

            {% if post.excerpt %}
            <p class="excerpt">{{ entry.excerpt }}</p>
            {% endif %}

            <ul>
                {% if entry.link.size and entry.link.size == 1 %}
                <li><a href="{{ entry.link[0].url }}" class="no_underline">{{ entry.link[0].label }}</a></li>
                {% else %}
                    {% for linkitem in entry.link %}
                <li><a href="{{ linkitem.url }}" class="no_underline">{{ linkitem.label }}</a></li>
                    {% endfor %}
                {% endif %}
            </ul>
        </div>
        {% endfor %}
    </div>
</div>
</div>
{% endcomment %}
