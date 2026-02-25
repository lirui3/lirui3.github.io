---
layout: page
title: Projects
permalink: /projects/
description: "Two core research programs: closed-loop human–AI interaction (PhD) and LLMs in engineering education."
nav: true
nav_order: 3
---

<style>
  html { scroll-behavior: smooth; }

  /* al-folio / CSS variable friendly colors (with fallbacks) */
  :root{
    --p-bg: var(--global-bg-color, #ffffff);
    --p-card: var(--global-card-bg-color, #ffffff);
    --p-text: var(--global-text-color, #111111);
    --p-text-soft: var(--global-text-color-light, rgba(0,0,0,.70));
    --p-border: var(--global-divider-color, rgba(0,0,0,.10));
    --p-shadow: rgba(0,0,0,.08);
    --p-blue: #006dae;
    --p-green: #2e7d32;
  }

  /* If theme doesn't provide text-color-light, approximate using opacity */
  .text-soft { color: var(--p-text); opacity: .78; }

  /* Prevent anchor from hiding behind fixed navbar */
  .anchor-offset { scroll-margin-top: 90px; }

  /* Lead text */
  .page-lead{
    font-size: 1.08rem;
    line-height: 1.75;
    max-width: 980px;
    margin: 10px 0 26px 0;
    color: var(--p-text);
    opacity: .86;
  }

  /* --- Hero nav cards --- */
  .nav-grid{
    display:grid;
    grid-template-columns:1fr;
    gap:18px;
    margin: 14px 0 38px 0;
  }
  @media (min-width: 768px){
    .nav-grid{ grid-template-columns: 1fr 1fr; }
  }

  .nav-card{
    display:block;
    padding: 22px 22px;
    border-radius: 16px;
    text-decoration:none !important;
    background: var(--p-card);
    border: 1px solid var(--p-border);
    box-shadow: 0 10px 28px var(--p-shadow);
    transition: transform .25s ease, box-shadow .25s ease;
    position:relative;
    overflow:hidden;
  }
  .nav-card:hover{
    transform: translateY(-4px);
    box-shadow: 0 16px 40px var(--p-shadow);
  }
  .nav-card::before{
    content:"";
    position:absolute;
    top:0; left:0; right:0;
    height:5px;
  }
  .nav-top{
    display:flex;
    align-items:center;
    gap:12px;
    margin-bottom: 8px;
  }
  .nav-icon{
    width: 42px;
    height: 42px;
    border-radius: 12px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    border: 1px solid var(--p-border);
    background: color-mix(in srgb, var(--p-text) 6%, transparent);
    flex: 0 0 auto;
  }
  .nav-card h3{
    margin:0;
    font-size: 1.12rem;
    font-weight: 900;
    letter-spacing: -0.01em;
  }
  .nav-card p{
    margin:0;
    line-height:1.55;
    color: var(--p-text);
    opacity: .75;
    font-size: .98rem;
  }

  .blue-card::before{ background: var(--p-blue); }
  .blue-card h3{ color: var(--p-blue); }
  .blue-card .nav-icon{
    border-color: color-mix(in srgb, var(--p-blue) 25%, var(--p-border));
    background: color-mix(in srgb, var(--p-blue) 12%, transparent);
    color: var(--p-blue);
  }

  .green-card::before{ background: var(--p-green); }
  .green-card h3{ color: var(--p-green); }
  .green-card .nav-icon{
    border-color: color-mix(in srgb, var(--p-green) 25%, var(--p-border));
    background: color-mix(in srgb, var(--p-green) 12%, transparent);
    color: var(--p-green);
  }

  /* --- Project sections --- */
  .proj-section{
    padding: 34px 26px;
    border-radius: 22px;
    margin: 0 0 44px 0;
    border: 1px solid var(--p-border);
    background: color-mix(in srgb, var(--p-card) 92%, transparent);
  }

  /* subtle tinted backgrounds (works in dark mode too) */
  .proj-blue{
    background: color-mix(in srgb, var(--p-blue) 7%, var(--p-card));
  }
  .proj-green{
    background: color-mix(in srgb, var(--p-green) 7%, var(--p-card));
  }

  .proj-title{
    margin:0 0 10px 0;
    font-size: 1.48rem;
    font-weight: 950;
    letter-spacing: -0.015em;
  }

  /* Callout */
  .proj-callout{
    padding: 16px 18px;
    border-radius: 12px;
    margin: 14px 0 22px 0;
    font-size: 1.02rem;
    line-height: 1.65;
    background: var(--p-card);
    border: 1px solid var(--p-border);
    color: var(--p-text);
  }
  .blue-callout{ border-left: 6px solid var(--p-blue); }
  .green-callout{ border-left: 6px solid var(--p-green); }

  /* Layout */
  .proj-grid{ display:grid; gap: 22px; }
  @media (min-width: 980px){
    .proj-grid{ grid-template-columns: 1.2fr 0.8fr; align-items:start; }
  }

  /* Icon list */
  .icon-list{ list-style:none; padding-left:0; margin: 0 0 18px 0; }
  .icon-list li{
    position:relative;
    padding-left: 30px;
    margin: 10px 0;
    line-height: 1.6;
    color: var(--p-text);
    opacity: .88;
  }
  .icon-list i{
    position:absolute;
    left:0; top:4px;
    font-size:1.05rem;
    opacity:.95;
  }
  .blue-text{ color: var(--p-blue); }
  .green-text{ color: var(--p-green); }

  /* Right info card */
  .info-card{
    background: var(--p-card);
    padding: 18px 18px 16px 18px;
    border-radius: 18px;
    border: 1px solid var(--p-border);
    box-shadow: 0 10px 28px var(--p-shadow);
    color: var(--p-text);
  }
  .info-card h4{
    margin: 0 0 12px 0;
    font-size: 1.05rem;
    font-weight: 900;
    padding-bottom: 10px;
    border-bottom: 1px solid var(--p-border);
  }

  /* Badges */
  .badge-container{ display:flex; flex-wrap:wrap; gap: 8px; margin: 0 0 14px 0; }
  .badge-item{
    padding: 6px 12px;
    border-radius: 999px;
    font-size: .85rem;
    font-weight: 750;
    border: 1px solid var(--p-border);
    background: color-mix(in srgb, var(--p-text) 6%, transparent);
    color: var(--p-text);
    opacity: .9;
  }
  .badge-blue{
    border-color: color-mix(in srgb, var(--p-blue) 22%, var(--p-border));
    background: color-mix(in srgb, var(--p-blue) 12%, transparent);
    color: var(--p-text);
  }
  .badge-green{
    border-color: color-mix(in srgb, var(--p-green) 22%, var(--p-border));
    background: color-mix(in srgb, var(--p-green) 12%, transparent);
    color: var(--p-text);
  }

  /* CTA */
  .cta-btn{
    display:inline-flex;
    align-items:center;
    gap: 10px;
    padding: 10px 16px;
    border-radius: 10px;
    font-weight: 900;
    text-decoration:none !important;
    transition: transform .2s ease, box-shadow .2s ease, background .2s ease;
    margin-top: 6px;
    border: 1px solid transparent;
  }
  .cta-blue{
    background: var(--p-blue);
    color:#fff !important;
  }
  .cta-blue:hover{
    transform: translateY(-2px);
    box-shadow: 0 12px 22px rgba(0,109,174,.25);
  }
  .cta-green{
    background: var(--p-green);
    color:#fff !important;
  }
  .cta-green:hover{
    transform: translateY(-2px);
    box-shadow: 0 12px 22px rgba(46,125,50,.25);
  }

  /* Collaboration block */
  .collab{
    text-align:center;
    max-width: 920px;
    margin: 0 auto 52px auto;
    padding: 26px 22px;
    background: var(--p-card);
    border-radius: 16px;
    border: 1px solid var(--p-border);
    box-shadow: 0 10px 28px var(--p-shadow);
    color: var(--p-text);
  }
  .collab h2{
    margin: 0 0 10px 0;
    font-size: 1.3rem;
    font-weight: 950;
  }
  .collab p{
    margin:0;
    font-size: 1.05rem;
    line-height: 1.65;
    color: var(--p-text);
    opacity: .78;
  }
</style>

<div class="projects">

  <p class="page-lead">
    I build <b>closed-loop, human-centred interactive AI</b>—from modelling user perceptions to designing adaptive agents that can be
    <b>measured</b> and <b>regulated</b> during real-time interaction. Below are my two core research programs.
  </p>

  <!-- Nav cards (no "Project 1/2" wording) -->
  <div class="nav-grid">
    <a href="#phd" class="nav-card blue-card">
      <div class="nav-top">
        <span class="nav-icon"><i class="fas fa-robot"></i></span>
        <h3>PhD Research (Thesis)</h3>
      </div>
      <p><b>From perception to interaction:</b> Psychological drivers and adaptive conversational agents for shared autonomous vehicles (SAVs)</p>
    </a>

    <a href="#civask" class="nav-card green-card">
      <div class="nav-top">
        <span class="nav-icon"><i class="fas fa-graduation-cap"></i></span>
        <h3>AI in Engineering Education</h3>
      </div>
      <p><b>LLM-based Learning Assistant (CivASK)</b> &amp; evaluation in real teaching contexts</p>
    </a>

  </div>

  <!-- ===================== Thesis / PhD ===================== -->
  <div id="phd" class="proj-section proj-blue anchor-offset">
    <h2 class="proj-title" style="color:var(--p-blue);">
      From perception to interaction: Psychological drivers and adaptive conversational agents for shared autonomous vehicles (SAVs)
    </h2>

    <div class="proj-callout blue-callout">
      <b>One-line summary:</b> I develop a closed-loop framework to <b>predict</b> user acceptance, <b>enable</b> scalable real-time interaction,
      <b>measure</b> user experience from dialogue, and <b>regulate</b> agent behaviour via <b>closed-loop feedback + bang–bang control</b>—demonstrated in SAV interaction.
    </div>

    <div class="proj-grid">
      <div>
        <h3 style="font-size:1.22rem; margin:0 0 12px 0; font-weight:950;">What this program delivers</h3>
        <ul class="icon-list">
          <li><i class="fas fa-chart-line blue-text"></i><b>Prediction:</b> data-driven modelling and interpretable visualisation of psychological drivers of acceptance.</li>
          <li><i class="fas fa-comments blue-text"></i><b>Interaction platform:</b> an LLM-based conversational testbed for open-domain human–agent interaction studies at scale.</li>
          <li><i class="fas fa-heartbeat blue-text"></i><b>Measurement:</b> interaction-level sentiment/subjectivity analysis to quantify user experience signals from dialogue.</li>
          <li><i class="fas fa-sliders-h blue-text"></i><b>Regulation:</b> closed-loop feedback control for adaptive autonomy, enabling real-time adjustment of agent behaviour.</li>
        </ul>

        <h3 style="font-size:1.22rem; margin:18px 0 12px 0; font-weight:950;">Key outputs</h3>
        <ul class="icon-list">
          <li><i class="fas fa-check-circle blue-text"></i>Predictive framework + chord diagram visualisation workflow for psychological drivers.</li>
          <li><i class="fas fa-check-circle blue-text"></i>Ethics-approved user studies and a curated interaction dataset for quantitative analysis.</li>
          <li><i class="fas fa-check-circle blue-text"></i>Measurement pipeline for experience signals in open-domain dialogue.</li>
          <li><i class="fas fa-check-circle blue-text"></i>Control-theoretic framework for adaptive, value-aligned interaction regulation.</li>
        </ul>

        <a href="{{ '/publications/' | relative_url }}" class="cta-btn cta-blue">
          <i class="fas fa-book-open"></i> Relevant publications
        </a>
      </div>

      <div class="info-card">
        <h4>Highlights</h4>
        <div class="badge-container">
          <span class="badge-item badge-blue">Closed-loop feedback control</span>
          <span class="badge-item badge-blue">LLM conversational agents</span>
          <span class="badge-item badge-blue">Experience measurement</span>
          <span class="badge-item badge-blue">Human studies (ethics)</span>
        </div>
        <ul style="padding-left:18px; margin:0 0 18px 0; line-height:1.6; opacity:.82;">
          <li><b>General contribution:</b> controllable, user-aware interaction design (domain-agnostic).</li>
          <li><b>Case study:</b> SAVs as a real-world interactive autonomous system.</li>
          <li><b>Why it matters:</b> supports transparency, user controllability, and psychological safety in adaptive interactions.</li>
        </ul>

        <h4>Methods</h4>
        <div class="badge-container" style="margin-bottom:0;">
          <span class="badge-item badge-blue"><i class="fas fa-brain"></i> Behavioural modelling</span>
          <span class="badge-item badge-blue"><i class="fas fa-network-wired"></i> ML prediction</span>
          <span class="badge-item badge-blue"><i class="fas fa-users"></i> User study design</span>
          <span class="badge-item badge-blue"><i class="fas fa-language"></i> NLP sentiment analysis</span>
          <span class="badge-item badge-blue"><i class="fas fa-cogs"></i> Control theory</span>
          <span class="badge-item badge-blue"><i class="fas fa-database"></i> Data pipelines</span>
        </div>
      </div>
    </div>

  </div>

  <!-- ===================== CivASK ===================== -->
  <div id="ai-in-education" class="proj-section proj-green anchor-offset">
    <h2 class="proj-title" style="color:var(--p-green);">
      AI in Engineering Education: LLM-based Learning Assistant (CivASK) &amp; Evaluation
    </h2>

    <div class="proj-callout green-callout">
      <b>One-line summary:</b> I collaborate on designing and evaluating retrieval-augmented LLM systems to provide reliable, equitable student support,
      with transparent evaluation and classroom-facing deployment.
    </div>

    <div class="proj-grid">
      <div>
        <h3 style="font-size:1.22rem; margin:0 0 12px 0; font-weight:950;">What this program delivers</h3>
        <ul class="icon-list">
          <li><i class="fas fa-laptop-code green-text"></i><b>System development:</b> a retrieval-augmented learning assistant grounded in course materials for faithful answers.</li>
          <li><i class="fas fa-tasks green-text"></i><b>Evaluation framework:</b> protocols to assess accuracy, coverage, and failure modes, supporting responsible use.</li>
          <li><i class="fas fa-chalkboard-teacher green-text"></i><b>Classroom translation:</b> ongoing pilots analysing real student–assistant interactions and teaching impact.</li>
        </ul>

        <h3 style="font-size:1.22rem; margin:18px 0 12px 0; font-weight:950;">Key outputs</h3>
        <ul class="icon-list">
          <li><i class="fas fa-check-circle green-text"></i>RAG pipeline and prompt design to improve answer faithfulness.</li>
          <li><i class="fas fa-check-circle green-text"></i>Evaluation design for reliability and coverage across student needs.</li>
          <li><i class="fas fa-check-circle green-text"></i>Evidence from teaching-context deployment informing responsible AI use.</li>
        </ul>

        <a href="{{ '/publications/' | relative_url }}" class="cta-btn cta-green">
          <i class="fas fa-book-open"></i> Relevant publications
        </a>
      </div>

      <div class="info-card">
        <h4>Highlights</h4>
        <div class="badge-container">
          <span class="badge-item badge-green">RAG systems</span>
          <span class="badge-item badge-green">LLM evaluation</span>
          <span class="badge-item badge-green">Real teaching context</span>
          <span class="badge-item badge-green">Equity &amp; accessibility</span>
          <span class="badge-item badge-green">Responsible AI</span>
        </div>
        <ul style="padding-left:18px; margin:0 0 18px 0; line-height:1.6; opacity:.82;">
          <li><b>Focus:</b> transparent, evidence-based deployment of LLM support tools.</li>
          <li><b>Strength:</b> connecting system design to real user outcomes (students).</li>
        </ul>

        <h4>Methods</h4>
        <div class="badge-container" style="margin-bottom:0;">
          <span class="badge-item badge-green"><i class="fas fa-search"></i> Retrieval-augmented generation</span>
          <span class="badge-item badge-green"><i class="fas fa-terminal"></i> Prompt engineering</span>
          <span class="badge-item badge-green"><i class="fas fa-chart-pie"></i> Learning analytics</span>
          <span class="badge-item badge-green"><i class="fas fa-user-check"></i> Human-centred evaluation</span>
        </div>
      </div>
    </div>

  </div>

  <div class="collab">
    <h2><i class="fas fa-hands-helping" style="color:#f39c12; margin-right:8px;"></i>Collaboration</h2>
    <p>
      I welcome collaborations on human-centred interactive AI, adaptive autonomy, real-time evaluation of AI systems, and responsible deployment in high-impact domains.
    </p>
  </div>

</div>
