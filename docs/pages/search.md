---
layout: page
title: "Search this site"
permalink: /search/
date: 
modified:
excerpt:
image:
  feature:
search_omit: true
sitemap: false
---
<!-- Html Elements for Search -->
<div id="search-container">
<input type="search" id="search-input" placeholder="what are you looking for?" autofocus >
<ul class="post-list" id="results-container"></ul>
</div>

<!-- Script pointing to search-script.js -->
<script src="https://unpkg.com/simple-jekyll-search@latest/dest/simple-jekyll-search.min.js" type="text/javascript"></script>

<!-- Configuration -->
<script>
SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('results-container'),
  limit: 50,
  json: '/search.json',
  searchResultTemplate: '<li><article><a href="{link}">{title}<span class="entry-date"><time datetime="{date}">{date}</time></span></a></article><footer><span><i class="fa fa-edit"></i>&nbsp;{category}</span><span><i class="fa fa-tags"></i>&nbsp;{tags}</span><span class="excerpt">{excerpt}</span></footer></li>',
  noResultsText: '<p><i>Nothing found. Try again...</i></p>'
})
</script>
