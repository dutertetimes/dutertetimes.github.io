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
        <p>Enter search tokens here:</p>
        <form action="{{site.baseurl}}/search/">
            <input accesskey="s" type="text" name="q" id="search_input" autocomplete="off" required title="Type your search string here" autofocus>
        </form>
    </div>
</div>

<div id="dt_search_content" class="section_container">

<script>
    $(document).ready(function() {
         $('#search_input').dt_search({
                'debug': false,
                'mode': 'json',
                'contentLocation': '{{site.url}}/search.json',
                'showItems': 10,
                'showURL': false,
                'highlightTerms': false,
         });
    });
</script>
