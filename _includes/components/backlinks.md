{% assign handleidingname = page.path | remove_first: page.collection | remove_first: "_/" | remove: ".md" %}
{% for handleiding in site.handleidingen %}
{% if handleiding.links contains handleidingname %}
- [{{handleiding.title}}]({{ handleiding.url | prepend: site.baseurl }})
{% endif %}
{% endfor %}
