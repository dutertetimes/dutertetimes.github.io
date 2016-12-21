---
title: Rodrigo Roa Duterte Quotations
excerpt: 
layout: info
categories: []
tags: []
published: true
permalink: /info/quote/index.html
---

{% assign posts = site.data.quotes | sort: "text" %}

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>{{ page.title }}</h1>

    <div class="section_container top_margin_10">
        <ol>
        {% for post in posts %}
            <li>{{ post.qtext }}
            {% unless post.qcontext == nil %}<br>— {{ post.qcontext }}{% if post.qdate != nil %}, {% endif %}{% endunless %}
            {% unless post.qdate == nil %}{{ post.qdate }}{% endunless %}<br><br></li>
        {% endfor %}
        </ol>
    </div>
</div>
