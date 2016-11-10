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

    <div class="section_container container_top_margin_10 container_bottom_margin_5">
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.stories[0] %}
            {% include post_entry.html post=postitem post_image="post_crime_16_9.png" %}
        </div>
        <div class="container container_right_margin_20">
            <div class="block block_margin_bottom block_default_fonts">
                <div class="entries">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="block block_margin_bottom block_default_fonts">
                <div class="entries">
                </div>
            </div>
        </div>
    </div>
</div>



<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Latest Events</h1>

    <div class="section_container container_top_margin_10 container_bottom_margin_5">
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.president[0] %}
            {% include post_entry.html post=postitem post_image="post_president_16_9.png" %}
        </div>
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.other[0] %}
            {% include post_entry.html post=postitem post_image="post_other_16_9.png" %}
        </div>
        <div class="container">
            {% assign postitem = site.categories.peace_process[0] %}
            {% include post_entry.html post=postitem post_image="post_peace_16_9.png" %}
        </div>
    </div>

    <div class="section_container container_bottom_margin_5">
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.criminality[0] %}
            {% include post_entry.html post=postitem post_image="post_crime_16_9.png" %}
        </div>
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.agrarian[0] %}
            {% include post_entry.html post=postitem post_image="post_agrarian_16_9.png" %}
        </div>
        <div class="container">
            {% assign postitem = site.categories.environment[0] %}
            {% include post_entry.html post=postitem post_image="post_environment_16_9.png" %}
        </div>
    </div>

    <div class="section_container container_bottom_margin_10">
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.business[0] %}
            {% include post_entry.html post=postitem post_image="post_business_16_9.png" %}
        </div>
        <div class="container container_right_margin_20">
            {% assign postitem = site.categories.foreign_affairs[0] %}
            {% include post_entry.html post=postitem post_image="post_foreign_16_9.png" %}
        </div>
        <div class="container">
            <div class="block block_margin_bottom block_default_fonts">
                <div class="entries">
                </div>
            </div>
        </div>
    </div>

</div>



<div class="section_container_wrapper section_container_wrapper_border">
    <h1>Topics</h1>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories.opinion %}
            {% include section_slideshow.html title="Opinion" category="Opinion" posts=section_posts post_image="post_opinion_16_9.png" %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories.peace_process %}
            {% include section_slideshow.html title="Peace Process" category="Peace Process" posts=section_posts post_image="post_peace_16_9.png" %}
        </div>
    </div>
</div>



<div class="section_container_wrapper section_container_wrapper_border container_bottom_margin_10">
    <h1>Events</h1>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20 container_bottom_border_thin">
            {% assign section_posts = site.categories.president %}
            {% include section_slideshow.html title="President" category="President" posts=section_posts post_image="post_president_16_9.png" %}
        </div>
        <div class="container container_bottom_border_thin">
            {% assign section_posts = site.categories.press_briefing %}
            {% include section_slideshow.html title="Press Briefing" category="Press Briefing" posts=section_posts post_image="post_other_16_9.png" %}
        </div>
    </div>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20 container_bottom_border_thin">
            {% assign section_posts = site.categories.business %}
            {% include section_slideshow.html title="Economy" category="Economy" posts=section_posts post_image="post_business_16_9.png" %}
        </div>
        <div class="container container_bottom_border_thin">
            {% assign section_posts = site.categories.criminality %}
            {% include section_slideshow.html title="Law and Order" category="Law and Order" posts=section_posts post_image="post_crime_16_9.png" %}
        </div>
    </div>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20 container_bottom_border_thin">
            {% assign section_posts = site.categories.agrarian %}
            {% include section_slideshow.html title="Agrarian" category="Agrarian" posts=section_posts post_image="post_agrarian_16_9.png" %}
        </div>
        <div class="container container_bottom_border_thin">
            {% assign section_posts = site.categories.environment %}
            {% include section_slideshow.html title="Environment" category="Environment" posts=section_posts post_image="post_environment_16_9.png" %}
        </div>
    </div>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories.foreign_affairs %}
            {% include section_slideshow.html title="Foreign Affairs" category="Foreign Affairs" posts=section_posts post_image="post_foreign_16_9.png" %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories.other %}
            {% include section_slideshow.html title="Other" category="Other" posts=section_posts post_image="post_other_16_9.png" %}
        </div>
    </div>

</div>



<script>
    $(document).ready(function() {
        currentOpinionSlide(0);
        currentPeaceProcessSlide(0);

        currentPresidentSlide(0);
        currentPressBriefingSlide(0);

        currentEconomySlide(0);
        currentLawandOrderSlide(0);

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

    function currentPressBriefingSlide(n) {
        showPressBriefingSlides(n);
    }

    function currentOtherSlide(n) {
        showOtherSlides(n);
    }

    function currentLawandOrderSlide(n) {
        showLawandOrderSlides(n);
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

    function showPressBriefingSlides(n) {
        showSlides("press_briefing_dot", "press_briefing_news_entry", n);
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

    function showPeaceProcessSlides(n) {
        showSlides("peace_process_dot", "peace_process_news_entry", n);
    }

    function showLawandOrderSlides(n) {
        showSlides("law_and_order_dot", "law_and_order_news_entry", n);
    }

    function showOpinionSlides(n) {
        showSlides("opinion_dot", "opinion_news_entry", n);
    }

    function showSlides(links, entries, index) {
        let i;
        let dots = document.getElementsByClassName(links);
        let slides = document.getElementsByClassName(entries);

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
