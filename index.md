---
layout: default
---
{% include image.html url="/assets/images/portrait.jpg" class="portrait" %}

My name's **Craig Frost**, and I'm a **Designer** who [*designs in the open*](/2014/10/24/designing-in-the-open/) and [*writes about practice*](/archive/). If you'd like to talk to me about a project or speaking engagement, you can contact me [*here*](mailto:c.frostwr1@gmail.com).

### Writing

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

### Open-source

<ul>
    <li><p><a href="http://craigfro.st/flow/"><em>Flow</em></a>—<em>Sketch</em> user-flow symbols.</p>
    </li>
    <li><p><a href="http://designerlydotfil.es"><em>Designerly Dotfiles</em></a>—Launching soon.</p>
    </li>
</ul>

### Contact

By phone Monday through Friday, 8 a.m. to 6 p.m.—outside of these times I am available via text message or email.

<ul>
    <li><p><a href="mailto:c.frostwr1@gmail.com">c.frostwr1@gmail.com</a></p>
    </li>
    <li><p><a href="tel:07534189501">07534189501</a></p>
</ul>
