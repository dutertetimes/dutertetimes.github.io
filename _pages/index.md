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
    <h1>Latest Events</h1>

    <div class="section_container container_top_margin_10 container_bottom_margin_5">
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['president'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_president.png" %}
            {% endfor %}
        </div>
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['other'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_other.png" %}
            {% endfor %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories['peace process'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_peace.png" %}
            {% endfor %}
        </div>
    </div>

    <div class="section_container container_bottom_margin_5">
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['criminality'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_crime.png" %}
            {% endfor %}
        </div>
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['agrarian'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_agrarian.png" %}
            {% endfor %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories['environment'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_environment.png" %}
            {% endfor %}
        </div>
    </div>

    <div class="section_container container_bottom_margin_10">
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['business'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_business.png" %}
            {% endfor %}
        </div>
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['foreign affairs'] %}
            {% for top_post in section_posts limit: 1 %}
                {% include post_entry_latest.html post=top_post post_image="post_foreign.png" %}
            {% endfor %}
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
            {% assign section_posts = site.categories['opinion'] %}
            {% include section_slideshow.html category="Opinion" posts=section_posts post_image="post_opinion.png" %}
        </div>
        <div class="container">
            <div class="block block_margin_bottom block_default_fonts">
                <div class="entries">
                </div>
            </div>
        </div>
    </div>
</div>



<div class="section_container_wrapper section_container_wrapper_border container_bottom_margin_10">
    <h1>Events</h1>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20 container_bottom_border_thin">
            {% assign section_posts = site.categories['president'] %}
            {% include section_slideshow.html title="President's Activities" category="President" posts=section_posts post_image="post_president.png" %}
        </div>
        <div class="container container_bottom_border_thin">
            {% assign section_posts = site.categories['other'] %}
            {% include section_slideshow.html title="Other News" category="Other" posts=section_posts post_image="post_other.png" %}
        </div>
    </div>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20 container_bottom_border_thin">
            {% assign section_posts = site.categories['peace process'] %}
            {% include section_slideshow.html title="Peace Process" category="Peace Process" posts=section_posts post_image="post_peace.png" %}
        </div>
        <div class="container container_bottom_border_thin">
            {% assign section_posts = site.categories['criminality'] %}
            {% include section_slideshow.html title="Law and Order" category="Law and Order" posts=section_posts post_image="post_crime.png" %}
        </div>
    </div>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20 container_bottom_border_thin">
            {% assign section_posts = site.categories['agrarian'] %}
            {% include section_slideshow.html title="Agrarian" category="Agrarian" posts=section_posts post_image="post_agrarian.png" %}
        </div>
        <div class="container container_bottom_border_thin">
            {% assign section_posts = site.categories['environment'] %}
            {% include section_slideshow.html title="Environment" category="Environment" posts=section_posts post_image="post_environment.png" %}
        </div>
    </div>

    <div class="section_container container_top_margin">
        <div class="container container_right_margin_20">
            {% assign section_posts = site.categories['business'] %}
            {% include section_slideshow.html title="Business and Economy" category="Business and Economy" posts=section_posts post_image="post_business.png" %}
        </div>
        <div class="container">
            {% assign section_posts = site.categories['foreign affairs'] %}
            {% include section_slideshow.html title="Foreign Affairs" category="Foreign Affairs" posts=section_posts post_image="post_foreign.png" %}
        </div>
    </div>

</div>



<script>
    $(document).ready(function() {
        currentOpinionSlide(0);

        //currentHeadlineSlide(0);
        currentPresidentSlide(1);
        currentOtherSlide(1);

        currentPeaceProcessSlide(1);
        currentLawandOrderSlide(1);

        currentAgrarianSlide(1);
        currentEnvironmentSlide(1);

        currentBusinessandEconomySlide(1);
        currentForeignAffairsSlide(1);
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

    function currentOtherSlide(n) {
        showOtherSlides(n);
    }

    function currentLawandOrderSlide(n) {
        showLawandOrderSlides(n);
    }

    function currentBusinessandEconomySlide(n) {
        showBusinessandEconomySlides(n);
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

    function showOtherSlides(n) {
        showSlides("other_dot", "other_news_entry", n);
    }

    function showBusinessandEconomySlides(n) {
        showSlides("business_and_economy_dot", "business_and_economy_news_entry", n);
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
