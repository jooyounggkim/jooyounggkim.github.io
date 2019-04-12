---
layout: archive
title: "Publications"
excerpt: " "
header:
  overlay_image: ryan_alcantara-2c-copy.jpg
  overlay_filter = 0.2
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
