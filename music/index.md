---
layout: page
title: Music
excerpt: "An archive of posts related to music sorted by date."
hidelogo: true
search_omit: true
---
<figure>
    <img src="/images/dancing-man.gif" alt="dancing-man-image" class="center non-selectable" width="40%"/>
</figure>
<div class="no-print pull-right"><i class="fa fa-rss"></i> <a href="/feed.music.xml" target="_blank">music feed</a></div><br/>

<ul class="post-list">
{% for post in site.categories.music %}
  <li>
    <article>
		<a href="{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a>
	</article>
    <footer>
      {% if post.categories[1] %}{% assign subcategory = post.categories[1] %}{% else %}{% assign subcategory = post.categories[0] %}{% endif %}
      <span title="{{ subcategory }} subcategory"><i class="fa fa-edit"></i>&nbsp;{{ subcategory }}</span>
      <span>{% capture readtime %}{{ post.content | number_of_words | plus:91 | divided_by:150.0 | append:'.' | split:'.' | first }}{% endcapture %}<i class="fa fa-clock-o"></i>&nbsp;{% if readtime == '0' %} &lt; 1{% else %}{{ readtime }}{% endif %} min. reading</span>
      <span>{% if post.tags %}<i class="fa fa-tags"></i>&nbsp;{% endif %}{% for tag in post.tags %}<a href="/tags/#{{ tag }}" title="Posts tagged {{ tag }}">{{ tag }}</a>{% unless forloop.last %}&nbsp;·&nbsp;{% endunless %}{% endfor %}</span>
      <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once | truncatewords:125 }}</span>
    </footer>
  </li>
{% endfor %}
</ul>