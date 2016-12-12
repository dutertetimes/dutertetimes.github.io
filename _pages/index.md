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

    <div class="section_container top_margin_10">
        <div class="container">
            {% assign postitem = site.categories.stories[0] %}
            {% include post_entry.html post=postitem post_image="post_crime_16_9.png" %}
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
        <div class="container">
            {% assign topic_title = topic | replace: '_', ' ' | upcase %}
            {% assign section_posts = site.categories[topic] %}
            {% include section_slideshow.html category=topic posts=section_posts post_image="post_opinion_16_9.png" %}
        </div>
        {% endfor %}
    </div>
</div>



<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Events</h1>

    <div class="section_container top_margin_10">
        <div class="container">
            {% assign section_posts = site.categories.president %}
            {% include section_slideshow.html category="president" posts=section_posts post_image="post_president_16_9.png" %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories.press %}
            {% include section_slideshow.html category="press" posts=section_posts post_image="post_press_16_9.png" %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories.economy %}
            {% include section_slideshow.html category="economy" posts=section_posts post_image="post_business_16_9.png" %}
        </div>

        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories.law_and_order %}
            {% include section_slideshow.html category="law_and_order" posts=section_posts post_image="post_crime_16_9.png" %}
        </div>
        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories.agrarian %}
            {% include section_slideshow.html category="agrarian" posts=section_posts post_image="post_agrarian_16_9.png" %}
        </div>
        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories.environment %}
            {% include section_slideshow.html category="environment" posts=section_posts post_image="post_environment_16_9.png" %}
        </div>

        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories.foreign_affairs %}
            {% include section_slideshow.html category="foreign_affairs" posts=section_posts post_image="post_foreign_16_9.png" %}
        </div>
        <div class="container container_top_border_thin">
            {% assign section_posts = site.categories.other %}
            {% include section_slideshow.html category="other" posts=section_posts post_image="post_other_16_9.png" %}
        </div>
    </div>
</div>



<script>
    $(document).ready(function() {
        currentOpinionSlide(0);
        currentPeaceProcessSlide(0);
        currentEjkHearingSlide(0);

        currentPresidentSlide(0);
        currentPressSlide(0);

        currentEconomySlide(0);
        currentLawAndOrderSlide(0);

        currentAgrarianSlide(0);
        currentEnvironmentSlide(0);

        currentForeignAffairsSlide(0);
        currentOtherSlide(0);
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

    /*
    function showHeadlineSlides(n) {
        showSlides("headline_dot", "headline_news_entry", n);
    }
    */

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
