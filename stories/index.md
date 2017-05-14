---
layout: archivepage
categories: [stories]
title: Stories
excerpt: "An archive of fictional stories sorted by date."
hidelogo: true
search_omit: true
archive:
  image: images/reading-man.gif
---
<ul class="post-list">
{% for post in site.categories.stories %}
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