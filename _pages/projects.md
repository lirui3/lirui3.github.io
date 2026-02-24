---
layout: page
title: Projects
permalink: /projects/
description: "Two core research programs: closed-loop human–AI interaction (PhD) and LLMs in engineering education."
nav: true
nav_order: 3
---

<style>
  /* Smooth scroll */
  html { scroll-behavior: smooth; }

  /* Prevent anchor from hiding behind fixed navbar (if any) */
  .anchor-offset { scroll-margin-top: 90px; }

  /* Page lead text */
  .page-lead {
    font-size: 1.08rem;
    color: rgba(0,0,0,.72);
    line-height: 1.75;
    max-width: 980px;
    margin: 10px 0 28px 0;
  }

  /* --- Hero Navigation Cards --- */
  .nav-grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: 18px;
    margin: 18px 0 42px 0;
  }
  @media (min-width: 768px) {
    .nav-grid { grid-template-columns: 1fr 1fr; }
  }

  .nav-card {
    display: block;
    padding: 22px 22px;
    border-radius: 16px;
    text-decoration: none !important;
    background: #fff;
    border: 1px solid rgba(0,0,0,0.08);
    box-shadow: 0 8px 26px rgba(0,0,0,0.06);
    transition: transform 0.25s ease, box-shadow 0.25s ease;
    position: relative;
    overflow: hidden;
  }
  .nav-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 14px 34px rgba(0,0,0,0.10);
  }
  .nav-card::before {
    content: "";
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 5px;
  }
  .nav-card .nav-top {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 8px;
  }
  .nav-card .nav-icon {
    width: 42px;
    height: 42px;
    border-radius: 12px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    background: rgba(0,0,0,0.03);
    border: 1px solid rgba(0,0,0,0.06);
    flex: 0 0 auto;
  }
  .nav-card h3 {
    margin: 0;
    font-size: 1.18rem;
    font-weight: 800;
  }
  .nav-card p {
    margin: 0;
    font-size: 0.98rem;
    color: rgba(0,0,0,.66);
    line-height: 1.55;
  }

  /* Color themes */
  .blue-card::before { background: #006dae; }
  .blue-card h3 { color: #006dae; }
  .blue-card .nav-icon { background: rgba(0,109,174,0.08); border-color: rgba(0,109,174,0.18); color: #006dae; }

  .green-card::before { background: #2e7d32; }
  .green-card h3 { color: #2e7d32; }
  .green-card .nav-icon { background: rgba(46,125,50,0.08); border-color: rgba(46,125,50,0.18); color: #2e7d32; }

  /* --- Project Sections --- */
  .proj-section {
    padding: 34px 26px;
    border-radius: 22px;
    margin: 0 0 44px 0;
    border: 1px solid rgba(0,0,0,0.06);
  }
  .proj-blue { background: #f4f9fc; }
  .proj-green { background: #f5fbf7; }

  .proj-title {
    margin: 0 0 10px 0;
    font-size: 1.55rem;
    font-weight: 900;
    letter-spacing: -0.01em;
  }

  /* One-line summary callout */
  .proj-callout {
    padding: 16px 18px;
    border-radius: 12px;
    margin: 14px 0 22px 0;
    font-size: 1.03rem;
    line-height: 1.65;
    background: #fff;
    border: 1px solid rgba(0,0,0,0.07);
  }
  .blue-callout { border-left: 6px solid #006dae; }
  .green-callout { border-left: 6px solid #2e7d32; }

  /* Layout */
  .proj-grid { display: grid; gap: 22px; }
  @media (min-width: 980px){
    .proj-grid { grid-template-columns: 1.2fr 0.8fr; align-items: start; }
  }

  /* Icon list */
  .icon-list { list-style: none; padding-left: 0; margin: 0 0 18px 0; }
  .icon-list li { position: relative; padding-left: 30px; margin: 10px 0; line-height: 1.6; }
  .icon-list i { position: absolute; left: 0; top: 4px; font-size: 1.05rem; opacity: .95; }

  .blue-text { color: #006dae; }
  .green-text { color: #2e7d32; }

  /* Right info card */
  .info-card {
    background: #fff;
    padding: 18px 18px 16px 18px;
    border-radius: 18px;
    border: 1px solid rgba(0,0,0,0.08);
    box-shadow: 0 10px 28px rgba(0,0,0,0.06);
  }
  .info-card h4 {
    margin: 0 0 12px 0;
    font-size: 1.05rem;
    font-weight: 800;
    padding-bottom: 10px;
    border-bottom: 1px solid rgba(0,0,0,0.08);
  }

  /* Badges */
  .badge-container { display: flex; flex-wrap: wrap; gap: 8px; margin: 0 0 14px 0; }
  .badge-item {
    padding: 6px 12px;
    border-radius: 999px;
    font-size: 0.85rem;
    font-weight: 600;
    border: 1px solid rgba(0,0,0,0.08);
    background: rgba(0,0,0,0.02);
  }
  .badge-blue { background: rgba(0,109,174,0.10); border-color: rgba(0,109,174,0.18); color: #0d47a1; }
  .badge-green { background: rgba(46,125,50,0.10); border-color: rgba(46,125,50,0.18); color: #1b5e20; }

  /* CTA button */
  .cta-btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    padding: 10px 16px;
    border-radius: 10px;
    font-weight: 800;
    text-decoration: none !important;
    transition: transform 0.2s ease, box-shadow 0.2s ease, background 0.2s ease;
    margin-top: 6px;
  }
  .cta-blue { background: #006dae; color: #fff !important; }
  .cta-blue:hover { background: #004d7a; transform: translateY(-2px); box-shadow: 0 10px 18px rgba(0,109,174,0.25); }

  .cta-green { background: #2e7d32; color: #fff !important; }
  .cta-green:hover { background: #1b5e20; transform: translateY(-2px); box-shadow: 0 10px 18px rgba(46,125,50,0.25); }

  /* Optional figure placeholder */
  .fig-placeholder {
    width: 100%;
    height: 170px;
    background: rgba(0,0,0,0.03);
    border: 2px dashed rgba(0,0,0,0.15);
    border-radius: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: rgba(0,0,0,.45);
    font-size: 0.92rem;
    margin: 16px 0 12px 0;
  }

  /* Collaboration block */
  .collab {
    text-align: center;
    max-width: 920px;
    margin: 0 auto 52px auto;
    padding: 26px 22px;
    background: #fff;
    border-radius: 16px;
    border: 1px solid rgba(0,0,0,0.08);
    box-shadow: 0 10px 28px rgba(0,0,0,0.06);
  }
  .collab h2 { margin: 0 0 10px 0; font-size: 1.35rem; font-weight: 900; }
  .collab p { margin: 0; font-size: 1.05rem; color: rgba(0,0,0,.68); line-height: 1.65; }
</style>

<div class="projects">

  <!-- IMPORTANT:
       DO NOT add another <h1>Projects</h1> here.
       The theme layout already renders the page title. -->

  <p class="page-lead">
    My research focuses on <b>human-centred interactive AI systems</b>, with an emphasis on understanding user behaviour, enabling real-time interaction,
    measuring user experience, and designing <b>closed-loop adaptive autonomy</b> for trustworthy and controllable AI.
    Below are my two core research programs.
  </p>

  <div class="nav-grid">
    <a href="#project1" class="nav-card blue-card">
      <div class="nav-top">
        <span class="nav-icon"><i class="fas fa-robot"></i></span>
        <h3>Project 1</h3>
      </div>
      <p><b>PhD Research:</b> Closed-loop Human–AI Interaction (SAVs as a case study)</p>
    </a>

    <a href="#project2" class="nav-card green-card">
      <div class="nav-top">
        <span class="nav-icon"><i class="fas fa-graduation-cap"></i></span>
        <h3>Project 2</h3>
      </div>
      <p><b>Collaboration:</b> AI in Engineering Education (RAG learning assistant &amp; evaluation)</p>
    </a>
  </div>

  <!-- ===================== Project 1 ===================== -->
  <div id="project1" class="proj-section proj-blue anchor-offset">
    <h2 class="proj-title" style="color:#006dae;">Project 1 — PhD Research: Closed-loop Human–AI Interaction</h2>

    <div class="proj-callout blue-callout">
      <b>One-line summary:</b> I develop a closed-loop framework to <b>predict</b> user acceptance, <b>enable</b> scalable real-time interaction,
      <b>measure</b> user experience from dialogue, and <b>regulate</b> agent behaviour via <b>feedback + bang–bang control</b>—demonstrated in the context of shared autonomous vehicles (SAVs).
    </div>

    <div class="proj-grid">
      <div>
        <h3 style="font-size:1.25rem; margin:0 0 12px 0; font-weight:900;">What this project delivers</h3>
        <ul class="icon-list">
          <li><i class="fas fa-chart-line blue-text"></i><b>Prediction:</b> data-driven modelling and interpretable visualisation of psychological drivers of acceptance.</li>
          <li><i class="fas fa-comments blue-text"></i><b>Interaction platform:</b> an LLM-based conversational testbed for open-domain human–agent interaction studies at scale.</li>
          <li><i class="fas fa-heartbeat blue-text"></i><b>Measurement:</b> interaction-level sentiment/subjectivity analysis to quantify user experience signals from dialogue.</li>
          <li><i class="fas fa-sliders-h blue-text"></i><b>Regulation:</b> closed-loop bang–bang control that adjusts agent response characteristics in real time, with analytical characterisation of stability and convergence (e.g., wrong-step probability, time-in-band).</li>
        </ul>

        <h3 style="font-size:1.25rem; margin:20px 0 12px 0; font-weight:900;">Key outputs</h3>
        <ul class="icon-list">
          <li><i class="fas fa-check-circle blue-text"></i>Predictive framework + interpretation/visualisation workflow for psychological drivers.</li>
          <li><i class="fas fa-check-circle blue-text"></i>Ethics-approved user studies and a curated interaction dataset for quantitative analysis.</li>
          <li><i class="fas fa-check-circle blue-text"></i>Measurement pipeline for experience signals in open-domain dialogue.</li>
          <li><i class="fas fa-check-circle blue-text"></i>Control-theoretic framework for adaptive, value-aligned interaction regulation.</li>
        </ul>

        <div class="fig-placeholder">
          <span><i class="fas fa-image" style="margin-right:8px;"></i> Optional: add a framework figure here</span>
        </div>

        <a href="{{ '/publications/' | relative_url }}" class="cta-btn cta-blue">
          <i class="fas fa-book-open"></i> View Publications
        </a>
      </div>

      <div class="info-card">
        <h4>Highlights</h4>
        <div class="badge-container">
          <span class="badge-item badge-blue">Closed-loop feedback</span>
          <span class="badge-item badge-blue">Bang–bang control</span>
          <span class="badge-item badge-blue">LLM conversational agents</span>
          <span class="badge-item badge-blue">Experience measurement</span>
          <span class="badge-item badge-blue">Theory + guarantees</span>
          <span class="badge-item badge-blue">Human studies (ethics)</span>
        </div>
        <ul style="padding-left:18px; margin:0 0 18px 0; color:rgba(0,0,0,.70); line-height:1.6;">
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

  <!-- ===================== Project 2 ===================== -->
  <div id="project2" class="proj-section proj-green anchor-offset">
    <h2 class="proj-title" style="color:#2e7d32;">Project 2 — AI in Engineering Education (Collaboration)</h2>

    <div class="proj-callout green-callout">
      <b>One-line summary:</b> I collaborate on designing and evaluating retrieval-augmented LLM systems to provide reliable, equitable student support, with transparent evaluation and classroom-facing deployment.
    </div>

    <div class="proj-grid">
      <div>
        <h3 style="font-size:1.25rem; margin:0 0 12px 0; font-weight:900;">What this project delivers</h3>
        <ul class="icon-list">
          <li><i class="fas fa-laptop-code green-text"></i><b>System development:</b> a retrieval-augmented learning assistant grounded in course materials for faithful answers.</li>
          <li><i class="fas fa-tasks green-text"></i><b>Evaluation framework:</b> protocols to assess accuracy, coverage, and failure modes, supporting responsible use.</li>
          <li><i class="fas fa-chalkboard-teacher green-text"></i><b>Classroom translation:</b> ongoing pilots analysing real student–assistant interactions and teaching impact.</li>
        </ul>

        <h3 style="font-size:1.25rem; margin:20px 0 12px 0; font-weight:900;">Key outputs</h3>
        <ul class="icon-list">
          <li><i class="fas fa-check-circle green-text"></i>RAG pipeline and prompt design to improve answer faithfulness.</li>
          <li><i class="fas fa-check-circle green-text"></i>Evaluation design for reliability and coverage across student needs.</li>
          <li><i class="fas fa-check-circle green-text"></i>Evidence from teaching-context deployment informing responsible AI use.</li>
        </ul>

        <div class="fig-placeholder" style="border-color: rgba(46,125,50,0.22);">
          <span><i class="fas fa-project-diagram" style="margin-right:8px;"></i> Optional: add a RAG architecture figure here</span>
        </div>

        <a href="{{ '/publications/' | relative_url }}" class="cta-btn cta-green">
          <i class="fas fa-book-open"></i> View Publications
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
        <ul style="padding-left:18px; margin:0 0 18px 0; color:rgba(0,0,0,.70); line-height:1.6;">
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
