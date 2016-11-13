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

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Search</h1>
    <div class="section_container container_top_margin_10 container_bottom_margin_5">
        <div class="container container_right_margin_20">
            <p>Enter your <i>search string</i> in the <i>search box</i> below. For convenience, a <i>search box</i> is provided at the top of the page that can be used without going to this page first.</p>
            <p>The search facility searches for <i>words</i>. If you provide a <i>search string</i> with more than one word, then the search facility will find for the occurrence of each. If you want to search for the occurrence of a <i>search string</i> containing a space, the <i>search string</i> must be enclosed between single quotes (') or double quotes (").</p>

            <form action="{{site.baseurl}}/search/" class="style_one">
                <input type="text" name="q" id="search_input" autocomplete="off" required>
            </form>
            
            <div id="tipue_search_content">

        </div>
    </div>
</div>
 
<script>
    $(document).ready(function() {
         $('#search_input').tipuesearch({
                'debug': true,
                'mode': 'json',
                'contentLocation': '{{site.baseurl}}/search.json',
                'show': 20,
                'showURL': false,
                'highlightTerms': false,
         });
    });
</script>