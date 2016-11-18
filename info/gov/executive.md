---
title: Executive Branch
excerpt: 
layout: info
categories: []
tags: []
published: true
---

<div class="section_container">
    <div class="container container_right_margin_20">
        {% assign branch = site.data.gov | where: "branch", "executive" | where: "scope", "top" %}
        <div class="block block_default_fonts">
            <div class="entries">
                {% for entry in branch %}
                    {% include gov_entry.html entry=entry %}
                {% endfor %}
            </div>
        </div>
    </div>
    
    <div class="container">
    </div>
</div>

<div class="section_container">
    <div class="container container_right_margin_20">
        <h1>Executive Departments</h1>
        
        {% assign branch = site.data.gov | where: "branch", "executive" | where: "scope", "cabinet" %}
        <div class="block block_default_fonts">
            <div class="entries">
                {% for entry in branch %}
                    {% include gov_entry.html entry=entry %}
                {% endfor %}
            </div>
        </div>
    </div>
    
    <div class="container">
        <h1>Executive Officials with Cabinet-Level Rank</h1>
        
        {% assign branch = site.data.gov | where: "branch", "executive" | where: "scope", "non-cabinet" | sort: "name" %}
        <div class="block block_default_fonts">
            <div class="entries">
                {% for entry in branch %}
                    {% include gov_entry.html entry=entry %}
                {% endfor %}
            </div>
        </div>

    </div>
</div>
