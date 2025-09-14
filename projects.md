---
layout: clean
title: Projects
permalink: /projects/
---

## My Projects

Here are some of the projects I've been working on:

{% for project in site.projects %}
<details markdown="1">
<summary><h2 style="display: inline; cursor: pointer;">{{ project.name }}</h2></summary>

{{ project.description }}

{{ project.summary }}

{% if project.tech_stack %}
**Technologies used:** {{ project.tech_stack | join: ", " }}
{% endif %}

{% if project.demo_url %}
🔗 [Live Demo]({{ project.demo_url }})
{% endif %}

{% if project.blog_post %}
📝 [Read more about this project]({{ project.blog_post }})
{% endif %}

[View on GitHub →](https://github.com/{{ site.github_username }}/{{ project.repo }})

</details>

---
{% endfor %}

You can find all my code on [GitHub](https://github.com/{{ site.github_username }}).
