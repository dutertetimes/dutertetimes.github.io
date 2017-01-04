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

    {% assign section_posts = site.categories.stories %}
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


{% assign found_topics = "opinion" | split: ',' %}
{% for post in site.categories.topics %}
    {% assign found_topics = found_topics | push: post.categories[1] %}
{% endfor %}
{% assign found_topics = found_topics | uniq %}

<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Topics</h1>
   
    <div class="section_container top_margin_10">
        {% for topic in found_topics %}
        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories[topic] %}
            {% assign section_image = topic | prepend: "post_16_9_" | append: ".png" %}
            {% include section_slideshow.html category=topic posts=section_posts max_post_count=6 %}
        </div>
        {% endfor %}
    </div>
</div>



<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Events</h1>
    <div class="section_container top_margin_10">
        {% for section_category in site.data.index_events %}
        <div class="container container_top_border_thin">
            {% assign category_posts = site.categories[section_category] %}

            {% assign section_posts = "" | split: '' %}
            {% assign count = 0 %}
            {% for post in category_posts %}
                {% if post.categories contains "topics" %}
                    {% continue %}
                {% endif %}
                {% assign section_posts = section_posts | push: post %}
                
                {% assign count = count | plus: 1 %}
                {% if count == 6 %}
                    {% break %}
                {% endif %}
            {% endfor %}
            
            {% assign section_image = section_category | prepend: "post_16_9_" | append: ".png" %}
            {% include section_slideshow.html category=section_category posts=section_posts max_post_count=6 post_image=section_image %}
        </div>
        {% endfor %}
    </div>
</div>



<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Other Events</h1>

    {% assign section_posts = "" | split: "" %}
    {% assign count = 0 %}
    {% for post in site.categories.other %}
        {% if post.categories contains "news" %}
            {% assign section_posts = section_posts | push: post %}
            {% assign count = count | plus: 1 %}
            {% if count == 9 %}
                {% break %}
            {% endif %}
        {% endif %}
    {% endfor %}
    
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



<script>
    $(document).ready(function() {

        {% for topic in found_topics %}
            {% assign words = topic | replace: '_', ' ' | split: ' ' %}
            {% capture titlecase_category %}{% for word in words %}{{ word | capitalize }} {% endfor %}{% endcapture %}
            {% assign js_category = titlecase_category | remove: ' ' %}
            current{{ js_category }}Slide(0);
        {% endfor %}

        currentPresidentSlide(0);
        currentPressSlide(0);

        currentEconomySlide(0);
        currentLawAndOrderSlide(0);

        currentAgrarianSlide(0);
        currentEnvironmentSlide(0);

        currentForeignAffairsSlide(0);
        currentPeaceProcessSlide(0);
    });

    popupModal('modal_top_1', 'source_top_1', 'destination_top_1', 'caption_top_1');
    popupModal('modal_top_2', 'source_top_2', 'destination_top_2', 'caption_top_2');

    // Argument must be greater than zero.
    /*
    function currentHeadlineSlide(n) {
        showHeadlineSlides(n);
    }
    */

    function currentPresidentSlide(n) {
        showPresidentSlides(n);
    }

    function currentPressSlide(n) {
        showPressSlides(n);
    }

    function currentOtherSlide(n) {
        showOtherSlides(n);
    }

    function currentLawAndOrderSlide(n) {
        showLawAndOrderSlides(n);
    }

    function currentEconomySlide(n) {
        showEconomySlides(n);
    }

    function currentAgrarianSlide(n) {
        showAgrarianSlides(n);
    }

    function currentEnvironmentSlide(n) {
        showEnvironmentSlides(n);
    }

    function currentForeignAffairsSlide(n) {
        showForeignAffairsSlides(n);
    }

    function currentPeaceProcessSlide(n) {
        showPeaceProcessSlides(n);
    }

    function currentEjkHearingSlide(n) {
        showEjkHearingSlides(n);
    }

    function currentOpinionSlide(n) {
        showOpinionSlides(n);
    }



    function showPresidentSlides(n) {
        showSlides("president_dot", "president_news_entry", n);
    }

    function showPressSlides(n) {
        showSlides("press_dot", "press_news_entry", n);
    }

    function showOtherSlides(n) {
        showSlides("other_dot", "other_news_entry", n);
    }

    function showEconomySlides(n) {
        showSlides("economy_dot", "economy_news_entry", n);
    }

    function showAgrarianSlides(n) {
        showSlides("agrarian_dot", "agrarian_news_entry", n);
    }

    function showEnvironmentSlides(n) {
        showSlides("environment_dot", "environment_news_entry", n);
    }

    function showForeignAffairsSlides(n) {
        showSlides("foreign_affairs_dot", "foreign_affairs_news_entry", n);
    }

    function showLawAndOrderSlides(n) {
        showSlides("law_and_order_dot", "law_and_order_news_entry", n);
    }

    function showOpinionSlides(n) {
        showSlides("opinion_dot", "opinion_news_entry", n);
    }

    function showPeaceProcessSlides(n) {
        showSlides("peace_process_dot", "peace_process_news_entry", n);
    }

    function showEjkHearingSlides(n) {
        showSlides("ejk_hearing_dot", "ejk_hearing_news_entry", n);
    }



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
