---
layout: post
title: "Creating a collection: howto"
modified:
categories: blog
excerpt:
share: true
comments: true
tags: [Collections]
author: Author1
hidelogo: true
date: 2018-12-04T23:30:50-04:00
---

Collections is a very handy jekyll feature. It helps   

In the following we shall describe the steps required in order to create a Jekyll collection. We have created [a collection of animals](/animals){:target="_blank"} for demo purposes.

####   1. In the <kbd>collections</kbd> folder, create a markdown file and give it any name you like, preferably same as your collection name (e.g. <kbd>animals.md</kbd>).

This file is meant to aggregate and present all collection items.

In its yaml front-matter, specify the layout as <kbd>collection</kbd>, and declare the name of the collection (e.g. <kbd>animals</kbd>). Optionally you may specify the permalink in which the collection will be available, typically same as the collection name.

```yaml
---
layout: collection
collection: "animals"
title: "A collection of animals"
permalink: "/animals/"
---    
```

**Tip:** The collection page will appear automatically as link in the site's navigation menu of each collection item. The previous and next arrows will navigate through the collection items.
{: .notice--info}

You may add any additional content you like, which will be displayed before the list of items.

####   2. Create a folder immediately under the root folder, and name it as per your collection name prefixed with underscore (e.g. <kbd>_animals</kbd>).

This folder is where the collection files (.md) should be stored (each file corresponds to an individual collection item).

####   3. Add markdown files for each collection item. 

The filenames are not relevant, other than to just keep a track on where each item is declared.

In the yaml front-matter of each collection item, specify the <kbd>layout name</kbd> (see step 4) and a <kbd>title</kbd>. Optionally, include whatever attributes are necessary to describe your  collection items. These attributes will be ignored by default, unless your collection item template use them for display (see step 4).

```yaml
---
layout: animal
title: Cormorant
class: Aves
family: Phalacrocoracidae
image:
  feature:
  credit: pexels.com
  creditlink:
  thumbnail: images.pexels.com/photos/760629/pexels-photo-760629.jpeg
---
```

If you don't want a particular layout, you can make use of the default <kbd>page</kbd> layout; in this case, the collection item will be rendered as a normal page.

You may add any additional content you like, which will be displayed according to the layout that you will create in step 4. You should create as many markdown files as your collection items. It is not necessary to specify any creation date (as required in posts), as this is not needed by jekyll.

**Tip:** Although a thumbnail or a feature image is not necessary to render the collection item page, it is nice to declare one, so that the collection page to display the item thumbnail properly. If you don't do so, your site's logo will be used.
{: .notice--info}

####   4. In <kbd>_layouts</kbd> folder, create a new layout for your collection items.

It makes more sense to have a dedicated layout for your collection items. Such a layout should inherit from the <kbd>page</kbd> layout, as each collection item is actually a page and not a post.

You may decide whether to use this layout for all, or use a different layout for each of your collections. Since collections are meant to be different from each other, it makes sense to define a layout per collection, and call the layout file similar to your collection name (e.g. <kbd>animal.html</kbd>).

Here is the layout used for the animals collection items:

```html
---
layout: page
---
<article class="animal">
  {% raw %}
    {% if page.image.thumbnail %}
    {% assign imageUrl = 'https://' | append: page.image.thumbnail %}
    <figure>
        <a href="{{ imageUrl }}"><img src="{{ imageUrl }}" alt="Photo of a {{ page.title | downcase }}"></a>
        {% if page.image.credit %}
        <figcaption><a href="{{ imageUrl }}" title="{{ imageUrl }}">Credits: {{ page.image.credit }}</a>.</figcaption>
        {% endif %}
    </figure>
  {% endif %}

  <h5>Class : {{ page.class }}</h5>
  <h5>Family: {{ page.family }}</h5>
  <h5>Description</h5>
  
  <div>
    {{ content }}
  </div>
{% endraw %} 
</article>
```

The layout parses the attributes defined in each collection item and renders them as specified. You need some basic knowledge of <kbd>html</kbd> and perhaps <kbd>liquid</kbd> to achieve this.

####   5. Declare the collection in your <kbd>_config.yml</kbd>.

This is needed by Jekyll. Not doing so, your collection will be ignored.

In the following example, two collections are defined, namely <kbd>animals</kbd> and <kbd>books</kbd>.

```yaml
collections:
  animals:
    output: true
    permalink: /:collection/:path
  books:
    output: true
    permalink: /:collection/:path    
```

####   6. Add the new collection to the site's main menu (navigation) or wherever.

Collections (similar to pages) are not posts, and therefore are not displayed in the post lists. In order to be accessed, the collection page (see step 1) needs to be included in either your sites menu (edit <kbd>_data/navigation.yml</kbd> accordingly), or anywhere else you think is proper.