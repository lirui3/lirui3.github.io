---
layout: page
permalink: /publications/
title: Publications
description: "publications by categories in reversed chronological order. Check my <a href='https://scholar.google.com/citations?user=13uW1k0AAAAJ&hl=en' target='_blank' style='color: #4285F4; font-weight: bold; text-decoration: underline;'>Google Scholar</a> for new updates."
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

{% bibliography %}

</div>

<style>
  /* 基础气泡样式 */
  .links .btn.tag-bubble {
    border-radius: 50px !important; /* 圆角变成气泡 */
    padding: 3px 12px !important;
    font-weight: 600 !important;
    letter-spacing: 0.5px;
    border: none !important;
    box-shadow: none !important;
    text-transform: uppercase;
    font-size: 0.75rem !important;
    margin-left: 5px; /* 和前面的按钮拉开一点距离 */
  }
  
  /* PhD Research (科技蓝) */
  .links .btn.tag-phd {
    background-color: #e3f2fd !important;
    color: #1565c0 !important;
  }
  .links .btn.tag-phd:hover { background-color: #bbdefb !important; }

  /* AI in Education (教育绿) */
  .links .btn.tag-edu {
    background-color: #e8f5e9 !important;
    color: #2e7d32 !important;
  }
  .links .btn.tag-edu:hover { background-color: #c8e6c9 !important; }
</style>
