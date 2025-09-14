# Personal Website

A simple Jekyll site for showcasing your work and projects, built for easy content management through configuration files.

## Quick Start

### Deploy to GitHub Pages (Easiest)

1. **Create a repository** named `your-username.github.io`
2. **Upload these files** to the repository  
3. **Edit `_config.yml`** with your information (see configuration section below)
4. **Enable GitHub Pages** in repository settings
5. **Your site will be live** at `https://your-username.github.io`

### Local Development

**Docker (Recommended)**
```bash
# Build and run the Jekyll site
docker build -t my-jekyll-site .
docker run -p 4000:4000 my-jekyll-site
```
Visit `http://localhost:4000`

**Traditional Ruby/Jekyll**
```bash
bundle install
bundle exec jekyll serve
```

## Site Configuration

### Basic Settings (`_config.yml`)

```yaml
# Site settings
title: "Your Name"
description: "Your site description" 
url: "https://your-username.github.io"

# Personal info
github_username: your_github_username
linkedin_username: your_linkedin_username
# email: intentionally omitted to avoid spam - contact via LinkedIn

# About section
about:
  bio: |
    Write about yourself here.
    You can use multiple lines and paragraphs.
    
    This appears on your homepage.
```

## Adding Projects

To add projects to your portfolio, edit the `projects` section in `_config.yml`:

### Project Format

```yaml
projects:
  - name: "Your Project Name"
    description: "Brief one-line description for project listings"
    summary: |
      Write a detailed multi-paragraph summary here that explains:
      
      - What the project does in detail
      - Key features and capabilities  
      - Technical architecture or approach
      - Use cases or problems it solves
      
      You can write multiple paragraphs to give visitors a complete understanding
      of your project's purpose and implementation.
    repo: "repository-name-on-github"
    tech_stack: ["Technology1", "Technology2", "Technology3"]
    demo_url: "https://optional-demo-link.com"  # Optional
    blog_post: "/blog/optional-blog-post"       # Optional
```

### Important YAML Notes

1. **Indentation matters** - Use 2 spaces for each level
2. **Multi-line summaries** - Use the `|` character after `summary:` for multi-line text
3. **Arrays** - Tech stack uses square brackets with quoted items
4. **Optional fields** - `demo_url` and `blog_post` can be omitted if not needed

### Example Project Entry

```yaml
- name: "Weather Dashboard" 
  description: "Real-time weather monitoring with interactive charts"
  summary: |
    A comprehensive weather dashboard that aggregates data from multiple weather APIs
    to provide real-time weather monitoring and forecasting. The application features
    interactive charts, customizable alerts, and responsive design for mobile devices.
    
    Built with modern web technologies, this dashboard can handle high-traffic loads
    and provides a smooth user experience across all device types.
  repo: "weather-dashboard"
  tech_stack: ["React", "Node.js", "D3.js", "Docker"]
  demo_url: "https://weather.example.com"
```

## Adding Open Source Contributions

To add open source contributions, edit the `open_source` section in `_config.yml`:

### Open Source Format

```yaml
open_source:
  - name: "Project Name"
    description: "Brief description of your contribution"
    summary: |
      Detailed explanation of your contribution:
      
      - What you contributed (features, bug fixes, documentation)
      - Impact of your contribution on the project
      - Your role in the community
      
      Multiple paragraphs are supported for comprehensive descriptions.
    repo: "owner/repository-name"  # Format: owner/repo for external projects
    contribution_type: ["Feature", "Bug Fix", "Documentation"]
    tech_stack: ["Technology", "Stack", "Used"]
    pr_url: "https://github.com/owner/repo/pull/123"  # Optional
    issue_url: "https://github.com/owner/repo/issues/456"  # Optional
```

### Projects vs Open Source

- **Projects**: Your own repositories and personal work
- **Open Source**: Contributions to other people's/organizations' projects
- Both sections support similar fields but open source includes contribution-specific fields like `pr_url` and `contribution_type`

## Site Features

### What's Included

- **Clean Design**: Uses Jekyll's Minima theme with responsive layout
- **Collapsible Sections**: Projects and open source sections can be expanded/collapsed
- **Config-Driven Content**: All content managed through `_config.yml`
- **No Email Spam**: Contact via LinkedIn instead of email
- **SEO Optimized**: Built-in SEO tags and RSS feed
- **GitHub Pages Ready**: Works perfectly with GitHub's hosting

### Page Structure

- **Homepage (`index.md`)**: Bio, collapsible projects, and contact links
- **Projects Page (`/projects/`)**: Detailed view of all projects and contributions
- **About Page**: Optional additional information

### Where Content Appears

- **Homepage**: Shows projects and contributions in collapsible sections
- **Projects Page**: Dedicated page with full project details and summaries
- **Automatic GitHub Links**: All projects link to your repositories
- **Navigation**: Clean header navigation between pages

## File Structure

```
├── _config.yml          # Site configuration and content
├── index.md             # Homepage
├── projects.md          # Projects page
├── Dockerfile           # Docker container setup
├── Gemfile              # Ruby dependencies
└── README.md            # This documentation
```

## Benefits of This Approach

- ✅ **No HTML/Markdown editing needed** for content updates
- ✅ **Consistent formatting** across the entire site
- ✅ **Easy to reorder** projects by changing config file
- ✅ **Clean separation** of content and presentation
- ✅ **Perfect for GitHub Pages** - no complex build process
- ✅ **Mobile responsive** and fast loading
- ✅ **Professional appearance** with minimal maintenance

## Making Updates

After editing `_config.yml`:
1. **GitHub Pages**: Changes appear automatically after commit/push
2. **Local Development**: Restart Jekyll server to see changes
3. **Docker**: Rebuild container if you modify configuration significantly

Your portfolio will update automatically across both the homepage and dedicated projects page!