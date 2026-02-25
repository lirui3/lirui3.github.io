---
layout: post
title: "Creative PowerPoint Templates for Academic Presentations"
date: 2026-02-25
description: Sharing two custom-designed PPT templates I made for PhD milestones.
tags: presentation design template tools phd
categories: resources
---

<p>A great presentation tells a compelling story, and visual design plays a huge role in keeping the audience engaged. Today, I am sharing two custom PowerPoint templates I designed specifically for academic presentations, such as PhD milestone reviews and thesis defenses.</p>

<style>
  .tpl-card {
    padding: 30px;
    border-radius: 16px;
    margin-bottom: 40px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.03);
    border: 1px solid rgba(0,0,0,0.05);
  }
  
  /* 模板 1：公路主题色 (浅灰蓝) */
  .tpl-car { background-color: #f8f9fa; border-left: 5px solid #6c757d; }
  .tpl-car .tpl-title { color: #495057; }
  
  /* 模板 2：书本主题色 (浅米黄) */
  .tpl-book { background-color: #fdfbf7; border-left: 5px solid #8d6e63; }
  .tpl-book .tpl-title { color: #5d4037; }

  .tpl-title { margin-top: 0 !important; font-size: 1.5rem; font-weight: bold; }
  
  /* 最佳适用场景列表 */
  .best-for-list {
    background: rgba(255,255,255,0.7);
    padding: 15px 20px;
    border-radius: 8px;
    margin-top: 25px;
  }
  .best-for-list ul { margin-bottom: 0; padding-left: 20px; margin-top: 10px; }
  .best-for-list li { margin-bottom: 5px; }

  /* --- 按钮容器 & 基础样式 --- */
  .btn-container {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
    margin-top: 25px;
  }
  .dl-btn {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 10px 22px;
    border-radius: 8px;
    font-weight: 600;
    text-decoration: none !important;
    transition: all 0.3s ease;
  }
  
  /* Car Buttons */
  .btn-car { background-color: #495057; color: white !important; border: 2px solid #495057; }
  .btn-car:hover { background-color: #343a40; border-color: #343a40; transform: translateY(-3px); box-shadow: 0 6px 15px rgba(0,0,0,0.2); }
  .btn-car-outline { background-color: transparent; color: #495057 !important; border: 2px solid #495057; }
  .btn-car-outline:hover { background-color: rgba(73, 80, 87, 0.1); transform: translateY(-3px); }
  
  /* Book Buttons */
  .btn-book { background-color: #8d6e63; color: white !important; border: 2px solid #8d6e63; }
  .btn-book:hover { background-color: #6d4c41; border-color: #6d4c41; transform: translateY(-3px); box-shadow: 0 6px 15px rgba(141,110,99,0.3); }
  .btn-book-outline { background-color: transparent; color: #8d6e63 !important; border: 2px solid #8d6e63; }
  .btn-book-outline:hover { background-color: rgba(141, 110, 99, 0.1); transform: translateY(-3px); }

  /* --- 夜间模式适配 (Dark Mode) --- */
  html[data-theme='dark'] .tpl-car { background-color: #1a1c1e; border-left-color: #495057; }
  html[data-theme='dark'] .tpl-car .tpl-title { color: #e9ecef; }
  html[data-theme='dark'] .tpl-book { background-color: #27201e; border-left-color: #5d4037; }
  html[data-theme='dark'] .tpl-book .tpl-title { color: #e7e0db; }
  html[data-theme='dark'] .best-for-list { background: rgba(0,0,0,0.3); }
  
  /* 夜间模式下的空心按钮反转 */
  html[data-theme='dark'] .btn-car-outline { color: #e9ecef !important; border-color: #e9ecef; }
  html[data-theme='dark'] .btn-car-outline:hover { background-color: rgba(233, 236, 239, 0.1); }
  html[data-theme='dark'] .btn-book-outline { color: #e7e0db !important; border-color: #e7e0db; }
  html[data-theme='dark'] .btn-book-outline:hover { background-color: rgba(231, 224, 219, 0.1); }
</style>

<div class="tpl-card tpl-car">
  <h3 class="tpl-title">🚗 Template 1: The "Car on the Road" Timeline</h3>
  
  <p>Standard progress bars or table of contents can sometimes feel a bit dry. To make the presentation's structure more intuitive and engaging, I designed a <b>dynamic road timeline header</b>.</p>
  
  <p>As you progress through your presentation, a small car "drives" along the road at the top of the slide. Each major section of your talk—such as <i>Introduction</i>, <i>Gap & Aims</i>, <i>Completed Research</i>, <i>Proposed Research</i>, <i>Thesis Structure</i>, and <i>Timeline</i>—acts as a signpost along the journey.</p>
  
  <div style="text-align: center; margin: 30px 0;">
    <img src="{{ '/assets/img/car_timeline_header.png' | relative_url }}" alt="Car Timeline Header" style="max-width: 85%; border-radius: 8px; box-shadow: 0 6px 15px rgba(0,0,0,0.1);">
  </div>

  <div class="best-for-list">
    <b><i class="fas fa-star" style="color:#f39c12;"></i> Best for:</b>
    <ul>
      <li>Milestone reviews (e.g., Confirmation of Candidature / Mid-Candidature Review)</li>
      <li>Presentations that require a clear visual roadmap of your progress.</li>
    </ul>
  </div>

  <div class="btn-container">
    <a href="{{ '/assets/resources/ppt_car-timeline_template_v1.pdf' | relative_url }}" target="_blank" class="dl-btn btn-car-outline">
      <i class="fas fa-file-pdf"></i> Preview PDF
    </a>
    <a href="{{ '/assets/resources/ppt_car-timeline_template_v1.pptx' | relative_url }}" target="_blank" class="dl-btn btn-car">
      <i class="fas fa-file-powerpoint"></i> Download PPTX
    </a>
  </div>
</div>

<div class="tpl-card tpl-book">
  <h3 class="tpl-title">📖 Template 2: The "Thesis Book"</h3>
  
  <p>When presenting a PhD thesis, you are essentially telling the story of a "book" you have been writing for several years. Why not make the presentation actually look like one?</p>
  
  <p>This template transforms your slides into a physical open book. By using custom gradient fills to simulate the book's center binding and shadows, combined with PowerPoint's native <b>Page Curl</b> transition, each slide advancement feels exactly like turning a page in your thesis.</p>
  
  <p style="font-size: 0.9rem; color: #777; font-style: italic; border-left: 3px solid #ccc; padding-left: 10px;">
    Note: The design mechanics for this realistic book transition were inspired by an excellent YouTube tutorial by Dr. Saeed Faal.
  </p>

  <div class="best-for-list">
    <b><i class="fas fa-star" style="color:#f39c12;"></i> Best for:</b>
    <ul>
      <li>PhD Thesis Defense (Final Oral Examination)</li>
      <li>Story-driven academic talks or lecture series.</li>
    </ul>
  </div>

  <div class="btn-container">
    <a href="{{ '/assets/resources/ppt_thesis-book_template_v1.pdf' | relative_url }}" target="_blank" class="dl-btn btn-book-outline">
      <i class="fas fa-file-pdf"></i> Preview PDF
    </a>
    <a href="{{ '/assets/resources/ppt_thesis-book_template_v1.pptx' | relative_url }}" target="_blank" class="dl-btn btn-book">
      <i class="fas fa-file-powerpoint"></i> Download PPTX
    </a>
  </div>
</div>
