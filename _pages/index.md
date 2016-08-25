---
layout: hub
title: Home
excerpt:
permalink: /
---

<div class="news_top_container">
    <div class="left_container">
        {% include component_slideshow_headline.html %}
        {% include component_slideshow_criminality.html %}
        {% include component_slideshow_peace.html %}
        {% include component_slideshow_agrarian.html %}
        {% include component_slideshow_environment.html %}
        {% include component_slideshow_business.html %}
        {% include component_slideshow_foreign_affairs.html %}
    </div>
    <div class="right_container">
        {% include component_list_others.html %}
    </div>
</div>

<div class="news_section_container">
    {% include component_list_criminality.html %}
    {% include component_list_peace.html %}
    
</div>

<div class="news_section_container">
    {% include component_list_agrarian.html %}
    {% include component_list_environment.html %}
</div>

<div class="news_section_container">
    {% include component_list_business.html %}
    {% include component_list_foreign_affairs.html %}
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
