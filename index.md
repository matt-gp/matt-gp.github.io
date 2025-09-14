---
layout: page
---

{{ site.about.bio }}

<details markdown="1">
<summary><h2 style="display: inline; cursor: pointer;">Projects</h2></summary>

{% for project in site.projects %}
### [{{ project.name }}](https://github.com/{{ site.github_username }}/{{ project.repo }})

{{ project.description }}

{{ project.summary }}

{% if project.tech_stack %}
**Tech Stack:** {{ project.tech_stack | join: ", " }}
{% endif %}

---
{% endfor %}

</details>

<details markdown="1">
<summary><h2 style="display: inline; cursor: pointer;">Open Source Contributions</h2></summary>

{% if site.open_source and site.open_source.size > 0 %}
{% for contribution in site.open_source %}
### [{{ contribution.name }}](https://github.com/{{ contribution.repo }})

{{ contribution.description }}

{% if contribution.contribution_type %}
**Contribution:** {{ contribution.contribution_type | join: ", " }}
{% endif %}

{% if contribution.tech_stack %}
**Tech Stack:** {{ contribution.tech_stack | join: ", " }}
{% endif %}

{% if contribution.pr_url %}
**Pull Request:** [View PR]({{ contribution.pr_url }})
{% endif %}

---
{% endfor %}
{% else %}
*Coming soon! I'm always looking for interesting open source projects to contribute to.*
{% endif %}

</details>

## Get in Touch

- **GitHub:** [{{ site.github_username }}](https://github.com/{{ site.github_username }})
- **LinkedIn:** [{{ site.linkedin_username }}](https://www.linkedin.com/in/{{ site.linkedin_profile_username }})
