---
title: Projects
exerpt: Stuff I'm working on
layout: archive
header:
  overlay_image: ryan_alcantara-2c-copy.jpg
  overlay_filter: 0.2

permalink: /portfolio/
collection: portfolio
entries_layout: grid
classes: wide
author_profile: true
---

Sample document listing for the collection `_portfolio`.

{% include base_path %}


{% for post in site.portfolio %}
  {% include archive-single.html %}
{% endfor %}