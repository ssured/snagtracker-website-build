---
permalink: /handleidingen/
layout: page
title:  Online Handleiding
---

Per onderwerp is een handige handleiding gemaakt over hoe u SnagTracker kunt gebruiken. Deze handleidingen worden voortdurend aangevuld.

<ul>
  {% for handleiding in site.handleidingen %}
    {% if handleiding.published != false %}
      <li>
        <h4>
          <a href="{{ handleiding.url | prepend: site.baseurl }}">{{ handleiding.title }}</a>
        </h4>
      </li>
    {% endif %}
  {% endfor %}
</ul>
