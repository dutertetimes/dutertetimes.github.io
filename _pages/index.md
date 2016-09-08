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
        <img src="/images/top_1.png" width="270px" height="auto" >
    {% else %}
        <img src="https://dl.dropboxusercontent.com/u/47611946/dutertetimes/site/top_1.png" width="270px" height="auto" >
    {% endif %}
    </div>
    <div class="right_container">
    {% if site.development %}
        <img src="/images/top_2.png" width="270px" height="auto" >
    {% else %}
        <img src="https://dl.dropboxusercontent.com/u/47611946/dutertetimes/site/top_2.png" width="270px" height="auto" >
    {% endif %}
    </div>
</div>
{% endif %}

<div class="section_container">
    <div class="left_container">
        {% include block_slideshow_headline.html %}
        {% include block_list.html category="other" max_count=8 %}
    </div>
    <div class="right_container">
        {% include block_list.html category="opinion" max_count=8 %}
    </div>
</div>

<div class="section_container">
    <div class="left_container">
    {% include block_slideshow_criminality.html %}
    {% include block_list.html category="criminality" max_count=3 %}
    </div>

    <div class="right_container">
    {% include block_slideshow_peace.html %}
    {% include block_list.html category="peace process" max_count=3 %}
    </div>
</div>

<div class="section_container">
    <div class="left_container">
    {% include block_slideshow_agrarian.html %}
    {% include block_list.html category="agrarian" max_count=3 %}
    </div>

    <div class="right_container">
    {% include block_slideshow_environment.html %}
    {% include block_list.html category="environment" max_count=3 %}
    </div>
</div>

<div class="section_container">
    <div class="left_container">
    {% include block_slideshow_business.html %}
    {% include block_list.html category="business" max_count=3 %}
    </div>

    <div class="right_container">
    {% include block_slideshow_foreign_affairs.html %}
    {% include block_list.html category="foreign affairs" max_count=3 %}
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
        // Slide index starts at one.
        // This assignment is for offsetting the initial value.
        var headlineSlideIndex = 1;
        var businessSlideIndex = 1;
        var agrarianSlideIndex = 1;
        var environmentSlideIndex = 1;
        var foreignAffairsSlideIndex = 1;
        var peaceProcessSlideIndex = 1;
        var criminalitySlideIndex = 1;

        currentHeadlineSlide(1);
        currentBusinessSlide(1);
        currentAgrarianSlide(1);
        currentEnvironmentSlide(1);
        currentForeignAffairsSlide(1);
        currentPeaceProcessSlide(1);
        currentCriminalitySlide(1);
    });

    // Argument must be greater than zero.
    function currentHeadlineSlide(n) {
        headlineSlideIndex = n - 1;
        showHeadlineSlides();
    }

    function currentBusinessSlide(n) {
        businessSlideIndex = n - 1;
        showBusinessSlides();
    }

    function currentAgrarianSlide(n) {
        agrarianSlideIndex = n - 1;
        showAgrarianSlides();
    }

    function currentEnvironmentSlide(n) {
        environmentSlideIndex = n - 1;
        showEnvironmentSlides();
    }

    function currentForeignAffairsSlide(n) {
        foreignAffairsSlideIndex = n - 1;
        showForeignAffairsSlides();
    }

    function currentPeaceProcessSlide(n) {
        peaceProcessSlideIndex = n - 1;
        showPeaceProcessSlides();
    }

    function currentCriminalitySlide(n) {
        criminalitySlideIndex = n - 1;
        showCriminalitySlides();
    }

    function showHeadlineSlides() {
        showSlides("headline_dot", "headline_news_entry", headlineSlideIndex);
    }

    function showBusinessSlides() {
        showSlides("business_dot", "business_news_entry", businessSlideIndex);
    }

    function showAgrarianSlides() {
        showSlides("agrarian_dot", "agrarian_news_entry", agrarianSlideIndex);
    }

    function showEnvironmentSlides() {
        showSlides("environment_dot", "environment_news_entry", environmentSlideIndex);
    }

    function showForeignAffairsSlides() {
        showSlides("foreignaffairs_dot", "foreignaffairs_news_entry", foreignAffairsSlideIndex);
    }

    function showPeaceProcessSlides() {
        showSlides("peaceprocess_dot", "peaceprocess_news_entry", peaceProcessSlideIndex);
    }

    function showCriminalitySlides() {
        showSlides("criminality_dot", "criminality_news_entry", criminalitySlideIndex);
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
</script>
