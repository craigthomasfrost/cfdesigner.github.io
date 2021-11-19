---
layout: default
title: Home
---
<h1 class="home-heading">Craig Atallah Frost</h1>
<p>Helping to improve global research as Head of Design at <a href="https://www.askattest.com/">Attest</a>. I care about people, products, and process—in that order. You can reach me on <a href="https://twitter.com/atallahfrost">Twitter</a>, <a href="https://www.linkedin.com/in/craigtfrost/">LinkedIn</a>, or <a href="https://dribbble.com/_ctf">Dribbble</a>.</p>

<ul class="post-list">
{% for post in site.posts %}
    <li class="grid">
        <span class="grid__col grid__col--4-of-12">{{ post.date | date: "%b %d, %Y" }}</span>
        <a href="{{ post.url }}" class="grid__col grid__col--8-of-12">{{ post.title }}</a>
    </li>
{% endfor %}
</ul>
