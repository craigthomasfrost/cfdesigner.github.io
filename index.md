---
layout: default
---
My name's **Craig Frost**, and I'm a **designer** who [*designs in the open*](/2014/10/24/designing-in-the-open/) and [*writes about practice*](/archive/). If you'd like to talk to me about a project or speaking engagement, you can contact me [*here*](mailto:c.frostwr1@gmail.com).

### Writing

Some essays, most blog posts, I write for you, the reader, but mostly for myself, as a vehicle for learning. All are published here to document my thoughts, emotions and ideas in relation to design. There's a comfort in writing them down.

<ul class="posts">  
	{% for post in site.posts limit:5 %}  
    <li>  
        <a class="post-title" href="{{ BASE_PATH }}{{ post.url }}">  
            <p>{{ post.title }}
        </a> – <em>{% assign d = post.date | date: "%-d"  %}
  {{ post.date | date: "%B" }}
  {% case d %}
  {% when '1' or '21' or '31' %}{{ d }}<sup>st</sup>
  {% when '2' or '22' %}{{ d }}<sup>nd</sup>
  {% when '3' or '23' %}{{ d }}<sup>rd</sup>
  {% else %}{{ d }}<sup>th</sup>
  {% endcase %},
  {{ post.date | date: "%Y" }}</em></p>
    </li>
	{% endfor %}  
    <li>
        <a href="/archive">Archive
        </a>
    </li>
</ul>

### work

In the interest and pursuit of quality over quantity, I only showcase one project at a time. This one happens to be a work in progress, so you can follow my process as I design. This product is called *Coach*.

<ul>
    <li><p><a href="/coach/product">Product</a></p>
    </li>
    <li><p><a href="/coach/illustration">Illustration</a></p>
    </li>
    <li><p><a href="">Documentation</a></p>
    </li>
</ul>

### contact

I'm available via phone Monday through Friday 8 a.m. to 6 p.m.—outside of these times I am available via text message or email. Exceptions are made should your query be particularly urgent, or should our time-zones vary wildly. 

<ul>
    <li><p><a href="mailto:c.frostwr1@gmail.com">c.frostwr1@gmail.com</a></p>
    </li>
    <li><p><a href="tel:07534189501">07534189501</a></p>
</ul>

Why is my site so simple? Good question, [*satisfactory answer*](/an-explanation).
