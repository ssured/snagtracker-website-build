---
permalink: /handleidingen/
layout: page
title:  Online Handleiding
---

<ul>
  {% for handleiding in site.handleidingen %}
    {% if handleiding.published != false %}
      <li>
        <h2>
          <a href="{{ handleiding.url | prepend: site.baseurl }}">{{ handleiding.title }}</a>
        </h2>
      </li>
    {% endif %}
  {% endfor %}
</ul>
