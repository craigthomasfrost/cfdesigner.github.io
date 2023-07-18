---
layout: default
title: Home
---
<h1 class="home-heading">Craig Atallah Frost</h1>
<p>Designing brands, products, and whetever else you'll let me near. I care about people, products, and process—in that order. You can reach me on <a href="https://threads.net/atallahfrost">Threads</a> or <a href="https://www.linkedin.com/in/craigtfrost/">LinkedIn</a></p>

<ul class="post-list">
{% for post in site.posts %}
    <li class="grid">
        <span class="grid__col grid__col--4-of-12">{{ post.date | date: "%b %d, %Y" }}</span>
        <a href="{{ post.url }}" class="grid__col grid__col--8-of-12">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>
