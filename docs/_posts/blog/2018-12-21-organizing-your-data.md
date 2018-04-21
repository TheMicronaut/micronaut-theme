---
layout: post
title: "Organizing your data"
modified:
categories: blog
excerpt:
share: true
comments: true
author: Author1
hidelogo: true
date: 2018-12-21T23:30:50-04:00
---
#### The 'docs' folder
All data (pages, posts, collections, xmldata) is located in the documents folder named <kbd>docs</kbd>. The documents folder is declared in the _config.yml as: 

<kbd>collections_dir: docs</kbd>

#### Creating Categories
It is wise to organize your posts in categories, although this is not necessary. A post may have more than one category defined in the yaml front-matter as:
<kbd>categories: [category1, category2, ...]</kbd>. Categories are treated hierarchically, thus in the previous example, <kbd>category2</kbd> will be a subcategory of <kbd>category1</kbd>. 

Adding a new category in your site is as trivial as defining the category in your post's yaml front-matter. To list all posts of the same category, you have to create a new page in folder <kbd>/categories/</kbd>. You may name the file however you like, but typically the filename follows the name of the category it represents. The content of the markdown file should look as the following example for the blog category:

```yaml
---
layout: page
title: BLOG
categories: [blog]
permalink: /blog/
---
{% raw %}
{% include post-list.html taxonomy='blog' image='images/pen-hand.gif' %}
{% endraw %}
```

In the include statement, the 'image' parameter is optional. This image will be displayed in the top of the list of the categorie's posts.

You may choose any permalink you like to display your page, but it is wiser to keep it simple.

Next to the category page, it makes sense to have the category (rss) feed page. Some of your visitors might want to subscribe to rss feed only for a certain category rather than all posts. To do so, you need to add a new xml (template) file in folder <kbd>/categories/feeds</kbd>. The filename should have the format <kbd>feed.{CategoryName}.xml</kbd>, and the content of the file should be as follows:

```yaml
---
permalink: /feed.blog.xml
sitemap: false
---
{% raw %}
{% include category-feed.xml postlist=site.categories.blog taxonomy='blog' %}
{% endraw %}
```

After building your site, the feed file should be in present in the root folder. If that is the case, then the navigation menu will display a 'Subscribe' link to the feed file so that visitors can access it and subscribe to the categories feed. If you don't specify a feed template for a category, then the 'Subscribe' link will not be displayed.

#### Collections
For collections check [here](/blog/how-to-setup-collections/).