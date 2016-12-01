---
title: Search
layout: search
permalink: /search/
sitemap: false
---


<div id="search_section_container" class="section_container_wrapper section_container_wrapper_border">
    <h1>Search</h1>
    <div class="section_container">
        <div class="container">

            <p>If your <i>search string</i> contains a space character, it must be enclosed between single (') or double quotes (").</p>
            
            <form action="{{site.baseurl}}/search/" class="style_one">
                <input accesskey="s" type="text" name="q" id="search_input" autocomplete="off" required title="Type your search string here">
            </form>

        </div>
    </div>
</div>

<div id="tipue_search_content">

{% comment %}
<p>If your <i>search string</i> contains a space character, it must be enclosed between single (') or double quotes (").</p>
<form action="{{site.baseurl}}/search/" class="style_one">
    <input accesskey="s" type="text" name="q" id="search_input" autocomplete="off" required title="Type your search string here">
</form>
<div id="tipue_search_content" class="section_container_wrapper section_container_wrapper_border container_bottom_margin_10">
{% endcomment %}

<script>
    $(document).ready(function() {
         $('#search_input').tipuesearch({
                {% if site.development %}'debug': true,{% endif %}
                'mode': 'json',
                'contentLocation': '{{site.baseurl}}/search.json',
                'show': 20,
                'showURL': false,
                'highlightTerms': false,
         });
    });
</script>
