---
layout: default
---

###Archive

Here you'll find essays and blog posts from times gone by. They are a record of my growth, and, hopefully, can offer something to you. Having said that: judge me not by what I thought, but what I think. 

<ul class="posts">  
	{% for post in site.posts limit:50 %}  
    <li>  
        <a class="post-title" href="{{ BASE_PATH }}{{ post.url }}">  
            <p>{{ post.title }}
        </a> – <em>{% assign d = post.date | date: "%-d"  %}
{{ post.date | date: "%B" }}
{% case d %}
  {% when '1' or '21' or '31' %}{{ d }}st
  {% when '2' or '22' %}{{ d }}nd
  {% when '3' or '23' %}{{ d }}rd
  {% else %}{{ d }}th
  {% endcase %},
  {{ post.date | date: "%Y" }}</em></p>
    </li>
	{% endfor %}  
</ul>