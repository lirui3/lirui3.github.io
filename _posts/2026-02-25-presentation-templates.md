---
layout: post
title: "🖥️ PowerPoint Templates for Academic Presentations"
date: 2026-02-25
description: Sharing two custom-designed PPT templates I made for PhD milestones.
tags: resources, PhD
categories: resources

templates:
  - key: car
    emoji: "🚗"
    title: 'Template 1: The "Car on the Road" Timeline'
    desc:
      - "Standard progress bars or table of contents can sometimes feel a bit dry. To make the presentation&amp;apos;s structure more intuitive and engaging, I designed a <b>dynamic road timeline header</b>."
      - 'As you progress through your presentation, a small car "drives" along the road at the top of the slide. Each major section of your talk—such as <i>Introduction</i>, <i>Gap & Aims</i>, <i>Completed Research</i>, <i>Proposed Research</i>, <i>Thesis Structure</i>, and <i>Timeline</i>—acts as a signpost along the journey.'
    image: "/assets/img/car_timeline_header.png"
    image_alt: "Car Timeline Header"
    best_for:
      - "Milestone reviews (e.g., Confirmation of Candidature / Mid-Candidature Review)"
      - "Presentations that require a clear visual roadmap of your progress."
    pdf: "/assets/resources/ppt_car-timeline_template_v1.pdf"
    pptx: "/assets/resources/ppt_car-timeline_template_v1.pptx"
    theme:
      bg: "#f8f9fa"
      text: "#495057"
      accent: "#6c757d"
      bg_dark: "#1a1c1e"
      text_dark: "#e9ecef"
      accent_dark: "#495057"

  - key: book
    emoji: "📖"
    title: 'Template 2: The "Thesis Book"'
    desc:
      - 'When presenting a PhD thesis, you are essentially telling the story of a "book" you have been writing for several years. Why not make the presentation actually look like one?'
      - "This template transforms your slides into a physical open book. By using custom gradient fills to simulate the book&amp;apos;s center binding and shadows, combined with PowerPoint&amp;apos;s native <b>Page Curl</b> transition, each slide advancement feels exactly like turning a page in your thesis."
    note: "Note: The design mechanics for this realistic book transition were inspired by an excellent YouTube tutorial by Dr. Saeed Faal."
    best_for:
      - "PhD Thesis Defense (Final Oral Examination)"
      - "Story-driven academic talks or lecture series."
    pdf: "/assets/resources/ppt_thesis-book_template_v1.pdf"
    pptx: "/assets/resources/ppt_thesis-book_template_v1.pptx"
    theme:
      bg: "#fdfbf7"
      text: "#5d4037"
      accent: "#8d6e63"
      bg_dark: "#27201e"
      text_dark: "#e7e0db"
      accent_dark: "#5d4037"
---

<p>
  A great presentation tells a compelling story, and visual design plays a huge role in keeping the audience engaged.
  Today, I am sharing two custom PowerPoint templates I designed specifically for academic presentations, such as PhD
  milestone reviews and thesis defenses.
</p>

<style>
  /* ============ Card + Typography ============ */
  .tpl-card {
    --tpl-bg: #fff;
    --tpl-text: #222;
    --tpl-accent: #666;

    --tpl-bg-dark: #111;
    --tpl-text-dark: #eee;
    --tpl-accent-dark: #888;

    padding: 30px;
    border-radius: 16px;
    margin-bottom: 40px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.03);
    border: 1px solid rgba(0,0,0,0.05);

    background: var(--tpl-bg);
    color: var(--tpl-text);
    border-left: 5px solid var(--tpl-accent);
  }

  .tpl-title { margin: 0 0 12px 0; font-size: 1.5rem; font-weight: 800; color: var(--tpl-text); }
  .tpl-card p, .tpl-card li { color: var(--tpl-text); }

  /* ============ Image block ============ */
  .tpl-media { text-align: center; margin: 30px 0; }
  .tpl-media img {
    max-width: 85%;
    border-radius: 8px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.10);
  }

  /* ============ Best-for box ============ */
  .best-for {
    background: rgba(255,255,255,0.7);
    padding: 15px 20px;
    border-radius: 8px;
    margin-top: 25px;
  }
  .best-for ul { margin: 10px 0 0 0; padding-left: 20px; }
  .best-for li { margin-bottom: 5px; }

  /* ============ Note block ============ */
  .tpl-note {
    font-size: 0.9rem;
    opacity: 0.85;
    font-style: italic;
    border-left: 3px solid rgba(0,0,0,0.25);
    padding-left: 10px;
    margin: 14px 0 0 0;
  }

  /* ============ Buttons (single system) ============ */
  .tpl-actions { display: flex; flex-wrap: wrap; gap: 15px; margin-top: 25px; }
  .tpl-btn {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 10px 22px;
    border-radius: 8px;
    font-weight: 650;
    text-decoration: none !important;
    transition: transform 0.25s ease, box-shadow 0.25s ease, background-color 0.25s ease, border-color 0.25s ease;
  }

  /* solid + outline derived from accent variable */
  .btn-solid   { background: var(--tpl-text); color: #fff !important; border: 2px solid var(--tpl-text); }
  .btn-outline { background: transparent;     color: var(--tpl-text) !important; border: 2px solid var(--tpl-text); }

  .btn-solid:hover   { transform: translateY(-3px); box-shadow: 0 6px 15px rgba(0,0,0,0.18); }
  .btn-outline:hover { transform: translateY(-3px); background: rgba(0,0,0,0.06); }

  /* ============ Dark mode: override once ============ */
  html[data-theme='dark'] .tpl-card,
  [data-theme='dark'] .tpl-card {
    background: var(--tpl-bg-dark) !important;
    color: var(--tpl-text-dark) !important;
    border-left-color: var(--tpl-accent-dark) !important;
  }
  html[data-theme='dark'] .tpl-card .tpl-title,
  html[data-theme='dark'] .tpl-card p,
  html[data-theme='dark'] .tpl-card li,
  [data-theme='dark'] .tpl-card .tpl-title,
  [data-theme='dark'] .tpl-card p,
  [data-theme='dark'] .tpl-card li {
    color: var(--tpl-text-dark) !important;
  }

  html[data-theme='dark'] .best-for,
  [data-theme='dark'] .best-for { background: rgba(0,0,0,0.35) !important; }

  html[data-theme='dark'] .btn-outline,
  [data-theme='dark'] .btn-outline { color: var(--tpl-text-dark) !important; border-color: var(--tpl-text-dark) !important; }
  html[data-theme='dark'] .btn-outline:hover,
  [data-theme='dark'] .btn-outline:hover { background: rgba(255,255,255,0.08) !important; }

  html[data-theme='dark'] .tpl-note,
  [data-theme='dark'] .tpl-note { border-left-color: rgba(255,255,255,0.25); }
</style>

{% for t in page.templates %}

<div class="tpl-card"
     style="
      --tpl-bg: {{ t.theme.bg }};
      --tpl-text: {{ t.theme.text }};
      --tpl-accent: {{ t.theme.accent }};
      --tpl-bg-dark: {{ t.theme.bg_dark }};
      --tpl-text-dark: {{ t.theme.text_dark }};
      --tpl-accent-dark: {{ t.theme.accent_dark }};
     ">

  <h3 class="tpl-title">{{ t.emoji }} {{ t.title }}</h3>

{% for para in t.desc %}

<p>{{ para }}</p>
{% endfor %}

{% if t.image %}

  <div class="tpl-media">
    <img src="{{ t.image | relative_url }}" alt="{{ t.image_alt }}">
  </div>
  {% endif %}

{% if t.note %}

<p class="tpl-note">{{ t.note }}</p>
{% endif %}

  <div class="best-for">
    <b><i class="fa-solid fa-star" style="color:#f39c12;"></i> Best for:</b>
    <ul>
      {% for item in t.best_for %}
        <li>{{ item }}</li>
      {% endfor %}
    </ul>
  </div>

  <div class="tpl-actions">
    <a href="{{ t.pdf | relative_url }}" target="_blank" class="tpl-btn btn-outline">
      <i class="fa-solid fa-file-pdf"></i> Preview PDF
    </a>
    <a href="{{ t.pptx | relative_url }}" target="_blank" class="tpl-btn btn-solid">
      <i class="fa-solid fa-file-powerpoint"></i> Download PPTX
    </a>
  </div>
</div>

{% endfor %}
