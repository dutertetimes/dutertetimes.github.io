---
 layout: default
 title: Search
 permalink: /search/
 sitemap: false
---
 
{% comment %}
    <script>
        (function() {
            var cx = '009678124006945617279:0sqfzi28scm';
            var gcse = document.createElement('script');
            gcse.type = 'text/javascript';
            gcse.async = true;
            gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(gcse, s);
        })();
    </script>
    <gcse:search></gcse:search>
{% endcomment %}

 <div id="home-search" class="home">
     <script>
         (function() {
             var cx = '009678124006945617279:0sqfzi28scm';
             var gcse = document.createElement('script');
             gcse.type = 'text/javascript';
             gcse.async = true;
             gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
             '//www.google.com/cse/cse.js?cx=' + cx;
             var s = document.getElementsByTagName('script')[0];
             s.parentNode.insertBefore(gcse, s);
         })();
     </script>
     <gcse:search queryParameterName="search_string"></gcse:search>
 </div>
 