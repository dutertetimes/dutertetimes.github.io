---
title: Search
layout: search
permalink: /search/
sitemap: false
---

{% comment %}
<form action="{{site.baseurl}}/search/">
<input type="text" name="q" id="search_input" autocomplete="off" required>
</form>
{% endcomment %}

<div id="tipue_search_content">
    <p>This page shows your search results. Enter your search criteria in the search box on top of the page.</p>
    <p>If a <i>search string</i> is a word, just type the word in the search box. If the <i>search string</i> contains a space, it should be enclosed between single quotes (') or double quotes (").</p>
</div>
 
<script>
    $(document).ready(function() {
         $('#search_input').tipuesearch({
               {% if site.development %}'debug': true,{% endif %}
              'mode': 'json',
              'contentLocation': '{{site.baseurl}}/search.json',
              'showURL': false
         });
    });
</script>