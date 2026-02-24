---
layout: page
title: projects
permalink: /projects/
description: "Two core research programs: closed-loop human–AI interaction (PhD) and LLMs in engineering education."
nav: false
nav_order: 3
---

<div class="projects">

<h1>Projects</h1>
<p>
My research focuses on <b>human-centred interactive AI systems</b>, with an emphasis on understanding user behaviour, enabling real-time interaction, measuring user experience, and designing <b>closed-loop adaptive autonomy</b> for trustworthy and controllable AI. Below are my two core research programs.
</p>

<!-- ====== self-contained styles (no theme dependency) ====== -->
<style>
  .p-grid{display:grid;gap:18px}
  .p-section{padding:6px 0 2px 0}
  .p-title{margin:0 0 8px 0}
  .p-sub{margin:0 0 14px 0;opacity:.92;line-height:1.55}
  .p-card{
    border:1px solid rgba(0,0,0,.08);
    border-radius:14px;
    padding:14px 16px;
    box-shadow:0 6px 18px rgba(0,0,0,.06);
    background:#fff;
  }
  .p-card h3{margin:0 0 10px 0;font-size:1.05rem}
  .p-badges{display:flex;flex-wrap:wrap;gap:8px;margin:0 0 12px 0}
  .p-badge{
    display:inline-block;
    padding:4px 10px;
    border-radius:999px;
    border:1px solid rgba(0,0,0,.10);
    background:rgba(0,0,0,.02);
    font-size:.85rem;
    white-space:nowrap;
  }
  .p-list{margin:0;padding-left:18px;line-height:1.55}
  .p-list li{margin:6px 0}
  .p-links{margin:12px 0 0 0}
  .p-links a{font-weight:600}
  .p-divider{margin:22px 0;border:0;border-top:1px solid rgba(0,0,0,.10)}
  @media (min-width: 900px){
    .p-grid-2{grid-template-columns: 1.12fr .88fr;align-items:start}
  }
</style>

<hr class="p-divider"/>

<!-- ===================== Project 1 ===================== -->
<a id="phd"></a>
<div class="p-section">
  <h2 class="p-title">Project 1 — PhD Research: Closed-loop Human–AI Interaction (SAV as a Case Study)</h2>
  <p class="p-sub">
    <b>One-line summary:</b> I develop a closed-loop framework to <b>predict</b> user acceptance, <b>enable</b> scalable real-time interaction,
    <b>measure</b> user experience from dialogue, and <b>regulate</b> agent behaviour via <b>feedback + bang–bang control</b>—demonstrated in the context of shared autonomous vehicles (SAVs).
  </p>

  <div class="p-grid p-grid-2">
    <!-- Left: narrative -->
    <div>
      <h3 style="margin:0 0 8px 0;">What this project delivers</h3>
      <ul class="p-list">
        <li><b>Prediction:</b> data-driven modelling and interpretable visualisation of psychological drivers of acceptance.</li>
        <li><b>Interaction platform:</b> an LLM-based conversational testbed for open-domain human–agent interaction studies at scale.</li>
        <li><b>Measurement:</b> interaction-level sentiment/subjectivity analysis to quantify user experience signals from dialogue.</li>
        <li><b>Regulation:</b> a closed-loop, bang–bang control mechanism that adjusts agent response characteristics in real time to maintain target experience states, supported by analytical guarantees (e.g., wrong-step probability and time-in-band).</li>
      </ul>

      <h3 style="margin:14px 0 8px 0;">Key outputs</h3>
      <ul class="p-list">
        <li>Predictive framework + interpretation/visualisation workflow for psychological drivers.</li>
        <li>Ethics-approved user studies and a curated interaction dataset for quantitative analysis.</li>
        <li>Measurement pipeline for experience signals in open-domain dialogue.</li>
        <li>Control-theoretic framework for adaptive, value-aligned interaction regulation.</li>
      </ul>

      <p class="p-links">
        <b>Publications:</b>
        <a href="{{ '/publications/' | relative_url }}">See publications</a>
      </p>
    </div>

    <!-- Right: highlights card -->
    <div class="p-card">
      <h3>Highlights</h3>
      <div class="p-badges">
        <span class="p-badge">Closed-loop feedback</span>
        <span class="p-badge">Bang–bang control</span>
        <span class="p-badge">Human studies (ethics)</span>
        <span class="p-badge">LLM conversational agents</span>
        <span class="p-badge">Experience measurement</span>
        <span class="p-badge">Theory + guarantees</span>
      </div>
      <ul class="p-list">
        <li><b>General contribution:</b> controllable, user-aware interaction design that is domain-agnostic.</li>
        <li><b>Case study:</b> SAVs as a real-world interactive autonomous system.</li>
        <li><b>Why it matters:</b> supports transparency, user controllability, and psychological safety in adaptive interactions.</li>
      </ul>

      <h3 style="margin:14px 0 8px 0;">Methods</h3>
      <div class="p-badges">
        <span class="p-badge">Behavioural modelling</span>
        <span class="p-badge">ML prediction</span>
        <span class="p-badge">User study design</span>
        <span class="p-badge">NLP sentiment analysis</span>
        <span class="p-badge">Control theory</span>
        <span class="p-badge">Data pipelines</span>
      </div>
    </div>
  </div>
</div>

<hr class="p-divider"/>

<!-- ===================== Project 2 ===================== -->
<a id="ai-education"></a>
<div class="p-section">
  <h2 class="p-title">Project 2 — AI in Engineering Education: RAG Learning Assistant &amp; Real-World Evaluation</h2>
  <p class="p-sub">
    <b>One-line summary:</b> I collaborate on designing and evaluating retrieval-augmented LLM systems to provide reliable, equitable student support, with transparent evaluation and classroom-facing deployment.
  </p>

  <div class="p-grid p-grid-2">
    <!-- Left: narrative -->
    <div>
      <h3 style="margin:0 0 8px 0;">What this project delivers</h3>
      <ul class="p-list">
        <li><b>System development:</b> a retrieval-augmented learning assistant grounded in course materials for faithful answers.</li>
        <li><b>Evaluation framework:</b> protocols to assess accuracy, coverage, and failure modes, supporting responsible use.</li>
        <li><b>Classroom translation:</b> ongoing pilots analysing real student–assistant interactions and teaching impact.</li>
      </ul>

      <h3 style="margin:14px 0 8px 0;">Key outputs</h3>
      <ul class="p-list">
        <li>RAG pipeline and prompt design to improve answer faithfulness.</li>
        <li>Evaluation design for reliability and coverage across student needs.</li>
        <li>Evidence from teaching-context deployment informing responsible AI use.</li>
      </ul>

      <p class="p-links">
        <b>Publications:</b>
        <a href="{{ '/publications/' | relative_url }}">See publications</a>
      </p>
    </div>

    <!-- Right: highlights card -->
    <div class="p-card">
      <h3>Highlights</h3>
      <div class="p-badges">
        <span class="p-badge">RAG systems</span>
        <span class="p-badge">LLM evaluation</span>
        <span class="p-badge">Real teaching context</span>
        <span class="p-badge">Equity &amp; accessibility</span>
        <span class="p-badge">Responsible AI</span>
      </div>
      <ul class="p-list">
        <li><b>Focus:</b> transparent, evidence-based deployment of LLM support tools.</li>
        <li><b>Strength:</b> connecting system design to real user outcomes (students).</li>
      </ul>

      <h3 style="margin:14px 0 8px 0;">Methods</h3>
      <div class="p-badges">
        <span class="p-badge">Retrieval-augmented generation</span>
        <span class="p-badge">Prompt engineering</span>
        <span class="p-badge">Learning analytics</span>
        <span class="p-badge">Human-centred evaluation</span>
      </div>
    </div>
  </div>
</div>

<hr class="p-divider"/>

<h2>Collaboration</h2>
<p>
I welcome collaborations on human-centred interactive AI, adaptive autonomy, real-time evaluation of AI systems, and responsible deployment in high-impact domains.
</p>

</div>
