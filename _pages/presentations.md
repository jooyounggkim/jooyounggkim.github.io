---
layout: archive
title: "Ryan Alcantara"
excerpt: "Presentations"
header:
  overlay_image: ryan_alcantara-2c-copy.jpg
  overlay_filter: 0.2
permalink: /presentations/
author_profile: true
---

{% include base_path %}


{% for post in site.presentations reversed %}
  {% include archive-single.html %}
{% endfor %}
