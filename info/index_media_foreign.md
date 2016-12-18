---
title: Foreign Media
excerpt: Foreign Media Listing
layout: info
categories: []
tags: []
published: true
permalink: /info/media_foreign/index.html
---

<ol>
    <li>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel elementum neque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet pretium velit. Curabitur eu vestibulum arcu. Nunc nec volutpat sem, a venenatis orci.</p>
    </li>
    <li>
    Maecenas consequat sollicitudin lorem nec faucibus.
    <p>Maecenas consequat sollicitudin lorem nec faucibus. Pellentesque vel turpis nec arcu accumsan mollis. Aliquam tempus auctor placerat. Etiam ultricies sit amet mi eu tincidunt. Cras laoreet dolor at ex eleifend rutrum. Mauris rutrum interdum dolor, vitae hendrerit lorem.</p>
    </li>
</ol>

{% assign list = site.data.media_foreign %}

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>{{ page.title }}</h1>
    <div class="section_container">
        {% include block_list.html posts=list counter="yes" entry_class="top_margin_10" %}
    </div>
</div>
