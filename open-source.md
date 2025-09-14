---
layout: clean
title: Open Source
permalink: /open-source/
---

## Open Source Contributions

Here are my contributions to the open source community:

{% if site.open_source and site.open_source.size > 0 %}
{% for contribution in site.open_source %}
<details markdown="1">
<summary><h3 style="display: inline; cursor: pointer;">{{ contribution.name }}</h3></summary>

{{ contribution.description }}

{{ contribution.summary }}

{% if contribution.contribution_type %}
**My Contribution:** {{ contribution.contribution_type | join: ", " }}
{% endif %}

{% if contribution.tech_stack %}
**Technologies:** {{ contribution.tech_stack | join: ", " }}
{% endif %}

{% if contribution.pr_url %}
🔗 [View Pull Request]({{ contribution.pr_url }})
{% endif %}

{% if contribution.issue_url %}
🐛 [View Issue]({{ contribution.issue_url }})
{% endif %}

[View Project →](https://github.com/{{ contribution.repo }})

</details>

---
{% endfor %}
{% else %}
*Coming soon! I'm always looking for interesting open source projects to contribute to.*

*If you have a project that could benefit from contributions in Go, DevOps, observability, or infrastructure, feel free to reach out!*
{% endif %}

## Why Open Source?

Contributing to open source projects is important to me because:

- **Giving back** to the community that has provided so many great tools
- **Learning** from other developers and different approaches to problems  
- **Improving** tools that I use in my daily work
- **Building** relationships within the tech community

## Get Involved

Interested in collaborating on open source projects? Check out my [GitHub profile](https://github.com/{{ site.github_username }}) or reach out via [LinkedIn](https://www.linkedin.com/in/{{ site.linkedin_username }}).
