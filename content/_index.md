---
title: ''
date: 2022-10-24
type: landing

design:
  spacing: '4rem'

sections:
  - block: resume-biography-3
    content:
      username: admin
      text: ''
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: Professional Summary
        education: Education
        interests: Focus Areas
    design:
      css_class: portfolio-hero
      avatar:
        size: medium
        shape: circle

  - block: markdown
    id: focus
    content:
      title: What I Build
      subtitle: Cloud security, DevSecOps, applied AI, and resilient infrastructure.
      text: |-
        <div class="portfolio-pillars">
          <article>
            <strong>Secure Cloud Foundations</strong>
            <span>AWS infrastructure, IAM boundaries, network segmentation, compliance-minded automation, and production-ready deployment pipelines.</span>
          </article>
          <article>
            <strong>AI-Assisted Security Operations</strong>
            <span>Threat detection, fraud analytics, root-cause analysis, and automation that helps teams respond faster with better context.</span>
          </article>
          <article>
            <strong>Self-Healing Systems</strong>
            <span>Monitoring, diagnostics, remediation workflows, and feedback loops that reduce downtime and manual recovery work.</span>
          </article>
        </div>
    design:
      columns: '1'

  - block: collection
    id: papers
    content:
      title: Featured Publications
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2
      fill_image: false

  - block: collection
    id: projects
    content:
      title: Selected Projects
      text: Systems and research prototypes across cloud security, fraud detection, remote access, and automated recovery.
      filters:
        folders:
          - projects
    design:
      view: article-grid
      fill_image: false
      columns: 3
      show_date: false
      show_read_time: false
      show_read_more: true

  - block: collection
    id: talks
    content:
      title: Talks and Presentations
      filters:
        folders:
          - events
    design:
      view: card
      columns: 2
---
