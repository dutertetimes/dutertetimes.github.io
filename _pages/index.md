---
layout: hub
title: Home
excerpt:
permalink: /
---

{% comment %}
{% if site.development %}
<div class="image_container">
    <div class="container">
    {% if site.development %}
        <img id="source_top_1" class="modal_source" src="/images/top_1.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu diam ante. Mauris id semper libero, et pulvinar nulla. Nulla eu feugiat diam. Donec metus nisl, congue sit amet interdum quis, convallis eu ligula. Phasellus rutrum turpis efficitur, cursus sapien eu, molestie nisl. Nunc interdum nibh ut auctor tincidunt." width="270px" height="auto" >
    {% else %}
        <img id="source_top_1" class="modal_source" src="{{ site.image_source }}/site/top_1.png" width="270px" height="auto" >
    {% endif %}
        <div id="modal_top_1" class="modal">
            <div class="modal_content">
                <img id="destination_top_1" class="modal_image">
                <p id="caption_top_1" class="modal_caption"></p>
            </div>
        </div>
    </div>
    <div class="container">
    {% if site.development %}
        <img id="source_top_2" class="modal_source" src="/images/top_2.png" width="270px" height="auto" >
    {% else %}
        <img id="source_top_2" class="modal_source" src="{{ site.image_source }}/site/top_2.png" width="270px" height="auto" >
    {% endif %}
        <div id="modal_top_2" class="modal">
            <div class="modal_content">
                <img id="destination_top_2" class="modal_image">
                <p id="caption_top_2" class="modal_caption"></p>
            </div>
        </div>
    </div>
</div>
{% endif %}
{% endcomment %}



<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Latest Stories</h1>

    {% assign section_posts = site.categories.story %}
    <div class="section_container top_margin_10">
        <div class="container_2n container_top_border_thin">
            {% assign show_items = "" | split: "" %}
            {% assign show_items = show_items | push: "date" %}
            {% assign show_items = show_items | push: "excerpt" %}
            {% assign show_items = show_items | push: "thumbnail" %}
            
            {% assign list = "" | split: "" %}
            {% for post in section_posts limit: 3 %}
                {% assign list = list | push: post %}
            {% endfor %}
            {% include block_default.html posts=list show=show_items %}
        </div>
        <div class="container_2n_list container_top_border_thin_mobile">
            {% assign show_items = "" | split: "" %}
            {% assign show_items = show_items | push: "date" %}
            
            {% assign list = "" | split: "" %}
            {% for post in section_posts offset: 3 limit: 6 %}
                {% assign list = list | push: post %}
            {% endfor %}
            {% include block_list.html posts=list show=show_items list_style="list_style_none" entry_class="border_left" %}
        </div>
    </div>
</div>



{% assign found_topic_categories = "" | split: ',' %}
{% for post in site.categories.topic %}
    {% assign found_topic_categories = found_topic_categories | push: post.categories[1] %}
{% endfor %}
{% assign found_topic_categories = found_topic_categories | uniq %}

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Topics</h1>
   
    <div class="section_container top_margin_10">
        {% assign section_posts = site.categories.opinion %}
        <div class="container container_top_border_thin">
            {% include section_slideshow.html category="opinion" posts=section_posts max_post_count=6 %}
        </div>
        
        {% for category in found_topic_categories %}
        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories[category] %}
            {% include section_slideshow.html category=category posts=section_posts max_post_count=6 %}
        </div>
        {% endfor %}
    </div>
</div>



{% assign news_posts = site.categories.news %}

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Events</h1>
    <div class="section_container top_margin_10">
        {% for section_category in site.data.index_events %}
        <div class="container container_top_border_thin">
            {% assign section_posts = "" | split: '' %}
            {% assign count = 0 %}
            {% for post in news_posts %}
                {% if post.categories[1] == section_category %}
                    {% assign section_posts = section_posts | push: post %}
                    {% assign count = count | plus: 1 %}
                    {% if count == 6 %}
                        {% break %}
                    {% endif %}
                {% endif %}
            {% endfor %}
            {% assign section_image = section_category | prepend: "post_16_9_" | append: ".png" %}
            {% include section_slideshow.html category=section_category posts=section_posts max_post_count=6 post_image=section_image %}
        </div>
        {% endfor %}
    </div>
</div>



{% assign section_posts = "" | split: '' %}
{% assign count = 0 %}
{% for post in news_posts %}
    {% if post.categories[1] == "other" %}
        {% assign section_posts = section_posts | push: post %}
        {% assign count = count | plus: 1 %}
        {% if count == 9 %}
            {% break %}
        {% endif %}
    {% endif %}
{% endfor %}

{% assign show_items = "" | split: "" %}
{% assign show_items = show_items | push: "date" %}
{% assign show_items = show_items | push: "excerpt" %}
{% assign show_items = show_items | push: "thumbnail" %}

{% assign list_left = "" | split: "" %}
{% for post in section_posts limit: 3 %}
    {% assign list_left = list_left | push: post %}
{% endfor %}

{% assign list_right = "" | split: "" %}
{% for post in section_posts offset: 3 limit: 6 %}
    {% assign list_right = list_right | push: post %}
{% endfor %}
            
<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Other Events</h1>

    <div class="section_container top_margin_10">
        <div class="container_2n container_top_border_thin">
            {% include block_default.html posts=list_left show=show_items %}
        </div>
        <div class="container_2n_list container_top_border_thin_mobile">
            {% include block_list.html posts=list_right list_style="list_style_none" entry_class="border_left" %}
        </div>
    </div>
</div>



<script>
    $(document).ready(function() {

        currentOpinionSlide(0);
        
        {% for category in found_topic_categories %}
            {% capture empty %}
            {% assign words = category | replace: '_', ' ' | split: ' ' %}
            {% capture titlecase_category %}{% for word in words %}{{ word | capitalize }} {% endfor %}{% endcapture %}
            {% assign js_category = titlecase_category | remove: ' ' %}
            {% endcapture %}{% assign empty = nil %}
        current{{ js_category }}Slide(0);
        {% endfor %}
        
        {% for category in site.data.index_events %}
            {% capture empty %}
            {% assign words = category | replace: '_', ' ' | split: ' ' %}
            {% capture titlecase_category %}{% for word in words %}{{ word | capitalize }} {% endfor %}{% endcapture %}
            {% assign js_category = titlecase_category | remove: ' ' %}
            {% endcapture %}{% assign empty = nil %}
        current{{ js_category }}Slide(0);
        {% endfor %}
    });

    popupModal('modal_top_1', 'source_top_1', 'destination_top_1', 'caption_top_1');
    popupModal('modal_top_2', 'source_top_2', 'destination_top_2', 'caption_top_2');
    
    function currentOpinionSlide(n) {
        showSlides("opinion_dot", "opinion_news_entry", n);
    }

    {% for category in found_topic_categories %}
        {% capture empty %}
        {% assign words = category | replace: '_', ' ' | split: ' ' %}
        {% capture titlecase_category %}{% for word in words %}{{ word | capitalize }} {% endfor %}{% endcapture %}
        {% assign js_category = titlecase_category | remove: ' ' %}
        {% endcapture %}{% assign empty = nil %}
    function current{{ js_category }}Slide(n) {
        showSlides("{{ category }}_dot", "{{ category }}_news_entry", n);
    }
    {% endfor %}
    
    {% for category in site.data.index_events %}
        {% capture empty %}
        {% assign words = category | replace: '_', ' ' | split: ' ' %}
        {% capture titlecase_category %}{% for word in words %}{{ word | capitalize }} {% endfor %}{% endcapture %}
        {% assign js_category = titlecase_category | remove: ' ' %}
        {% endcapture %}{% assign empty = nil %}
    function current{{ js_category }}Slide(n) {
        showSlides("{{ category }}_dot", "{{ category }}_news_entry", n);
    }
    {% endfor %}



    function showSlides(links, entries, index) {
        let i;
        let dots = document.getElementsByClassName(links);
        let slides = document.getElementsByClassName(entries);
        
        if (dots.length == 0) {
            return;
        }

        for (i = 0; i < slides.length; i++) {
           slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" slideshow_active", "");
        }
        slides[index].style.display = "block";
        dots[index].className += " slideshow_active";
    }


    function popupModal(modal, imageSource, imageDestination, caption) {
        // Get the modal
        var modal = document.getElementById(modal);

        // Get the image and insert it inside the modal - use its "alt" text as a caption
        var imgSource = document.getElementById(imageSource);
        var imgDest = document.getElementById(imageDestination);
        var imgCaption = document.getElementById(caption);
        imgSource.onclick = function() {
            modal.style.display = "block";
            imgDest.src = imgSource.src;
            imgCaption.innerHTML = this.alt;
        }

        imgDest.onclick = function() {
            modal.style.display = "none";
        }
        modal.onclick = function() {
            modal.style.display = "none";
        }
    }
</script>
