---
layout: page
title: Stories
excerpt: "An archive of fictional stories sorted by date."
hidelogo: true
search_omit: true
---
<figure>
    <img src="/images/reading-man.gif" alt="reading-man-image" class="center non-selectable" width="70%"/>
</figure>
<div class="no-print pull-right"><i class="fa fa-rss"></i> <a href="/feed.stories.xml" target="_blank">stories feed</a></div><br/>

<ul class="post-list">
{% for post in site.categories.stories %}
  <li>
    <article>
		<a href="{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a>
	</article>
    <footer>
	  <span>{% if post.tags %}<i class="fa fa-tags"></i>&nbsp;{% endif %}{% for tag in post.tags %}<a href="/tags/#{{ tag }}" title="Posts tagged {{ tag }}">{{ tag }}</a>{% unless forloop.last %}&nbsp;·&nbsp;{% endunless %}{% endfor %}&nbsp;&nbsp;</span>
	  <span>{% capture readtime %}{{ post.content | number_of_words | plus:91 | divided_by:150.0 | append:'.' | split:'.' | first }}{% endcapture %}<i class="fa fa-clock-o"></i>&nbsp;{% if readtime == '0' %} &lt; 1{% else %}{{ readtime }}{% endif %} min. reading</span>
	  <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once | truncatewords:125 }}</span>
    </footer>
  </li>
{% endfor %}
</ul>