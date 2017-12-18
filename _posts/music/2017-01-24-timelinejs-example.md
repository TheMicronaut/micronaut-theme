---
layout: post
categories: music
share: true
comments: true
title: 'TimelineJs integration example'
date: '2017-01-24T22:15:00+02:00'
tags: [timeline, examples, music]
author: Author2
hidelogo: true
enable_chat: false
xmldata: 
  data: /xmldata/example-data.xml
  template: timelinejs
---
The following page demonstrates how to integrate [Knight Lab's TimelineJs](https://timeline.knightlab.com){:target="_blank"} on your blog. The original data is stored as xml file on this repository, and they are automatically loaded and parsed via javascript. :simple_smile:

**Note:** You may check the source xml data [<i class="fa fa-link"></i>here]({{ page.xmldata.data }}){:target="_blank"}.
{:.notice}

Showing a TimelineJs on your page can be done in merely 3 simple steps:

1 Create an xml file containing the data you wish to display. Make sure you use the same template as here, so that the data to be parsed properly by javascript.

2 Add the following YAML front matter statement on the page:

```yaml
xmldata: 
  data: /xmldata/example-data.xml
  template: timelinejs
```
where 
* data: is a relative path to the xml data you created in step-1.
* template: should be `timelinejs`.

3 In markdown add the following line:

```html
<div id='timeline-js' style="width: 100%; height: 700px"></div>
```
you may choose width and height according to your needs.

The final result should look like as follows:

<div id='timeline-js' style="width: 100%; height: 700px"></div>