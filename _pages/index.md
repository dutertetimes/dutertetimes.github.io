---
layout: hub
title: Home
excerpt:
permalink: /
---

{% if site.development %}
<div class="image_container">
    <div class="left_container">
    {% if site.development %}
        <img id="source_top_1" class="modal_source" src="/images/top_1.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu diam ante. Mauris id semper libero, et pulvinar nulla. Nulla eu feugiat diam. Donec metus nisl, congue sit amet interdum quis, convallis eu ligula. Phasellus rutrum turpis efficitur, cursus sapien eu, molestie nisl. Nunc interdum nibh ut auctor tincidunt." width="270px" height="auto" >
    {% else %}
        <img id="source_top_1" class="modal_source" src="https://dl.dropboxusercontent.com/u/47611946/dutertetimes/site/top_1.png" width="270px" height="auto" >
    {% endif %}
        <div id="modal_top_1" class="modal">
            <div class="modal_content">
                <img id="destination_top_1" class="modal_image">
                <p id="caption_top_1" class="modal_caption"></p>
            </div>
        </div>
    </div>
    <div class="right_container">
    {% if site.development %}
        <img id="source_top_2" class="modal_source" src="/images/top_2.png" width="270px" height="auto" >
    {% else %}
        <img id="source_top_2" class="modal_source" src="https://dl.dropboxusercontent.com/u/47611946/dutertetimes/site/top_2.png" width="270px" height="auto" >
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

<div class="section_container">
    <div class="left_container">
        {% assign section_posts = site.categories['headline'] %}
        {% include section_slideshow.html category="headline" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="other" max_count=8 %}
    </div>
    <div class="right_container">
        {% assign section_posts = site.categories['opinion'] %}
        {% include section_slideshow.html category="opinion" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="opinion" max_count=8 %}
    </div>
</div>

<div class="section_container">
    <div class="left_container">
        {% assign section_posts = site.categories['criminality'] %}
        {% include section_slideshow.html category="criminality" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="criminality" max_count=3 %}
    </div>

    <div class="right_container">
        {% assign section_posts = site.categories['peace process'] %}
        {% include section_slideshow.html category="peace process" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="peace process" max_count=3 %}
    </div>
</div>

<div class="section_container">
    <div class="left_container">
        {% assign section_posts = site.categories['agrarian'] %}
        {% include section_slideshow.html category="agrarian" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="agrarian" max_count=3 %}
    </div>

    <div class="right_container">
        {% assign section_posts = site.categories['environment'] %}
        {% include section_slideshow.html category="environment" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="environment" max_count=3 %}
    </div>
</div>

<div class="section_container">
    <div class="left_container">
        {% assign section_posts = site.categories['business'] %}
        {% include section_slideshow.html category="business" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="business" max_count=3 %}
    </div>

    <div class="right_container">
        {% assign section_posts = site.categories['foreign affairs'] %}
        {% include section_slideshow.html category="foreign affairs" post_count=section_posts.size posts=section_posts %}
        {% include section_list.html category="foreign affairs" max_count=3 %}
    </div>
</div>



{% comment %}
<div id="news_section_vertical_container">
    {% if site.categories['transportation'].size > 0 %}
    <div class="news_section_transport_block">
        <h1>Transportation</h1>
        <div class="news_section">
            {% for post in site.categories['transportation'] limit:3 %}
                <div class="news_section_entry">
                    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
                    <p class="date">{{ post.date | date: site.data.format.date_only }}</p>
                    <p class="excerpt">{{ post.excerpt }}</p>
                </div>
            {% endfor %}
        </div>
    </div>
    {% endif %}

    {% if site.categories['scitech'].size > 0 %}
    <div class="news_section_scitech_block">
        <h1>Science and Technology</h1>
        <div class="news_section">
            {% for post in site.categories['scitech'] limit:3 %}
                <div class="news_section_entry">
                    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
                    <p class="date">{{ post.date | date: site.data.format.date_only }}</p>
                    <p class="excerpt">{{ post.excerpt }}</p>
                </div>
            {% endfor %}
        </div>
    </div>
    {% endif %}
</div>
{% endcomment %}



<script>
    $(document).ready(function() {
        currentHeadlineSlide(0);

        currentCriminalitySlide(0);
        currentPeaceProcessSlide(0);
        currentAgrarianSlide(0);
        currentEnvironmentSlide(0);
        currentBusinessSlide(0);
        currentForeignAffairsSlide(0);
    });
    
    popupModal('modal_top_1', 'source_top_1', 'destination_top_1', 'caption_top_1');
    popupModal('modal_top_2', 'source_top_2', 'destination_top_2', 'caption_top_2');

    // Argument must be greater than zero.
    function currentHeadlineSlide(n) {
        showHeadlineSlides(n);
    }

    function currentBusinessSlide(n) {
        showBusinessSlides(n);
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

    function currentCriminalitySlide(n) {
        showCriminalitySlides(n);
    }

    function showHeadlineSlides(n) {
        showSlides("headline_dot", "headline_news_entry", n);
    }

    function showBusinessSlides(n) {
        showSlides("business_dot", "business_news_entry", n);
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

    function showCriminalitySlides(n) {
        showSlides("criminality_dot", "criminality_news_entry", n);
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
