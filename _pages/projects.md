---
layout: page
title: Projects
permalink: /projects/
description: "Core research programs: closed-loop human–AI interaction (PhD) and LLMs in engineering education."
nav: true
nav_order: 3
---

<style>
  /* 开启平滑滚动 */
  html { scroll-behavior: smooth; }

  /* --- 导航卡片 (Hero Navigation) --- */
  .nav-grid { display: grid; grid-template-columns: 1fr; gap: 20px; margin: 30px 0 50px 0; }
  @media (min-width: 768px) { .nav-grid { grid-template-columns: 1fr 1fr; } }
  
  .nav-card {
    display: flex; flex-direction: column; justify-content: center;
    padding: 25px; border-radius: 12px; text-decoration: none !important;
    background: #fff; border: 1px solid rgba(0,0,0,0.08);
    box-shadow: 0 4px 15px rgba(0,0,0,0.04);
    transition: all 0.3s ease; position: relative; overflow: hidden;
  }
  .nav-card:hover { transform: translateY(-5px); box-shadow: 0 12px 25px rgba(0,0,0,0.1); }
  .nav-card h3 { margin: 0 0 10px 0; font-size: 1.25rem; font-weight: 700; z-index: 2; }
  .nav-card p { margin: 0; font-size: 0.95rem; color: #555; z-index: 2; }
  
  /* 导航卡片顶部彩色边线 */
  .nav-card::before { content: ""; position: absolute; top: 0; left: 0; right: 0; height: 4px; }
  .nav-card.blue-card::before { background: #006dae; }
  .nav-card.blue-card h3 { color: #006dae; }
  .nav-card.green-card::before { background: #2e7d32; }
  .nav-card.green-card h3 { color: #2e7d32; }

  /* --- 项目区块容器 --- */
  .proj-section { padding: 40px 30px; border-radius: 20px; margin-bottom: 50px; }
  .proj-blue { background-color: #f4f9fc; } /* 科技蓝背景 */
  .proj-green { background-color: #f5fbf7; } /* 教育绿背景 */
  
  .proj-title { margin-top: 0; font-size: 1.6rem; font-weight: bold; }
  
  /* --- 一句话总结 Callout --- */
  .proj-callout { padding: 18px 20px; border-radius: 8px; margin: 20px 0 30px 0; font-size: 1.05rem; line-height: 1.6; }
  .proj-callout.blue-callout { background: #eaf2f8; border-left: 5px solid #006dae; color: #0d47a1; }
  .proj-callout.green-callout { background: #e8f5e9; border-left: 5px solid #2e7d32; color: #1b5e20; }

  /* --- 布局排版 --- */
  .proj-grid { display: grid; gap: 30px; }
  @media (min-width: 900px){ .proj-grid { grid-template-columns: 1.2fr 0.8fr; align-items: start; } }
  
  /* --- 自定义图标列表 --- */
  .icon-list { list-style: none; padding-left: 0; margin-bottom: 25px; }
  .icon-list li { position: relative; padding-left: 30px; margin-bottom: 12px; line-height: 1.6; }
  .icon-list i { position: absolute; left: 0; top: 4px; font-size: 1.1rem; }
  .blue-text { color: #006dae; }
  .green-text { color: #2e7d32; }

  /* --- 右侧信息卡片 --- */
  .info-card { background: #fff; padding: 25px; border-radius: 16px; box-shadow: 0 8px 25px rgba(0,0,0,0.05); }
  .info-card h4 { margin: 0 0 15px 0; font-size: 1.15rem; border-bottom: 1px solid #eee; padding-bottom: 10px; }
  
  /* --- 胶囊标签 Badges --- */
  .badge-container { display: flex; flex-wrap: wrap; gap: 8px; margin-bottom: 20px; }
  .badge-item { padding: 5px 12px; border-radius: 50px; font-size: 0.85rem; font-weight: 500; }
  /* 蓝色系标签 */
  .badge-blue-light { background: #e3f2fd; color: #1565c0; border: 1px solid #bbdefb; }
  .badge-blue-dark { background: #bbdefb; color: #0d47a1; border: 1px solid #90caf9; }
  /* 绿色系标签 */
  .badge-green-light { background: #e8f5e9; color: #2e7d32; border: 1px solid #c8e6c9; }
  .badge-green-dark { background: #c8e6c9; color: #1b5e20; border: 1px solid #a5d6a7; }

  /* --- CTA 按钮 --- */
  .cta-btn { 
    display: inline-block; padding: 10px 20px; border-radius: 8px; font-weight: 600; 
    text-decoration: none !important; transition: all 0.3s; margin-top: 15px; 
  }
  .cta-blue { background: #006dae; color: #fff !important; }
  .cta-blue:hover { background: #004d7a; transform: translateY(-2px); box-shadow: 0 4px 10px rgba(0,109,174,0.3); }
  .cta-green { background: #2e7d32; color: #fff !important; }
  .cta-green:hover { background: #1b5e20; transform: translateY(-2px); box-shadow: 0 4px 10px rgba(46,125,50,0.3); }

  /* --- 图片占位符 --- */
  .fig-placeholder {
    width: 100%; height: 200px; background: rgba(0,0,0,0.03); border: 2px dashed rgba(0,0,0,0.15);
    border-radius: 12px; display: flex; align-items: center; justify-content: center;
    color: #999; font-size: 0.9rem; margin-top: 25px; margin-bottom: 15px;
  }
</style>

<div class="projects">

  <h1>Projects</h1>
  <p style="font-size: 1.1rem; color: #444; line-height: 1.7;">
    [cite_start]My research focuses on <b>human-centred interactive AI systems</b>, with an emphasis on understanding user behaviour, enabling real-time interaction, measuring user experience, and designing <b>closed-loop adaptive autonomy</b> for trustworthy and controllable AI[cite: 470]. [cite_start]Below are my two core research programs[cite: 471].
  </p>

  <div class="nav-grid">
    <a href="#project1" class="nav-card blue-card">
      <h3><i class="fas fa-robot"></i> Project 1</h3>
      <p>Closed-loop Human–AI Interaction (SAVs)</p>
    </a>
    <a href="#project2" class="nav-card green-card">
      <h3><i class="fas fa-graduation-cap"></i> Project 2</h3>
      <p>AI in Engineering Education (RAG)</p>
    </a>
  </div>


  <div id="project1" class="proj-section proj-blue">
    <h2 class="proj-title" style="color: #006dae;">Project 1 — PhD Research: Closed-loop Human–AI Interaction</h2>
    
    <div class="proj-callout blue-callout">
      [cite_start]<b>One-line summary:</b> I develop a closed-loop framework to <b>predict</b> user acceptance, <b>enable</b> scalable real-time interaction, <b>measure</b> user experience from dialogue, and <b>regulate</b> agent behaviour via <b>feedback + bang–bang control</b>—demonstrated in the context of shared autonomous vehicles (SAVs)[cite: 472, 473].
    </div>

    <div class="proj-grid">
      <div>
        [cite_start]<h3 style="font-size: 1.3rem; margin-bottom: 15px;">What this project delivers [cite: 474]</h3>
        <ul class="icon-list">
          [cite_start]<li><i class="fas fa-chart-line blue-text"></i><b>Prediction:</b> data-driven modelling and interpretable visualisation of psychological drivers of acceptance[cite: 475].</li>
          [cite_start]<li><i class="fas fa-comments blue-text"></i><b>Interaction platform:</b> an LLM-based conversational testbed for open-domain human–agent interaction studies at scale[cite: 476].</li>
          [cite_start]<li><i class="fas fa-heartbeat blue-text"></i><b>Measurement:</b> interaction-level sentiment/subjectivity analysis to quantify user experience signals from dialogue[cite: 477].</li>
          [cite_start]<li><i class="fas fa-sliders-h blue-text"></i><b>Regulation:</b> a closed-loop, bang–bang control mechanism that adjusts agent response characteristics in real time to maintain target experience states, supported by analytical guarantees (e.g., wrong-step probability and time-in-band)[cite: 478].</li>
        </ul>

        [cite_start]<h3 style="font-size: 1.3rem; margin-bottom: 15px; margin-top: 30px;">Key outputs [cite: 479]</h3>
        <ul class="icon-list">
          [cite_start]<li><i class="fas fa-check-circle blue-text"></i>Predictive framework + interpretation/visualisation workflow for psychological drivers[cite: 480].</li>
          [cite_start]<li><i class="fas fa-check-circle blue-text"></i>Ethics-approved user studies and a curated interaction dataset for quantitative analysis[cite: 480].</li>
          [cite_start]<li><i class="fas fa-check-circle blue-text"></i>Measurement pipeline for experience signals in open-domain dialogue[cite: 481].</li>
          [cite_start]<li><i class="fas fa-check-circle blue-text"></i>Control-theoretic framework for adaptive, value-aligned interaction regulation[cite: 482].</li>
        </ul>

        <div class="fig-placeholder">
          <span><i class="fas fa-image fa-2x" style="display:block; text-align:center; margin-bottom: 10px;"></i> [Framework Figure Placeholder]</span>
        </div>

        <a href="{{ '/publications/' | relative_url }}" class="cta-btn cta-blue"><i class="fas fa-book-open"></i> View Related Publications</a>
      </div>

      <div class="info-card">
        [cite_start]<h4>Highlights [cite: 483]</h4>
        <div class="badge-container">
          [cite_start]<span class="badge-item badge-blue-light">Closed-loop feedback [cite: 484]</span>
          [cite_start]<span class="badge-item badge-blue-light">Bang–bang control [cite: 484]</span>
          [cite_start]<span class="badge-item badge-blue-light">LLM conversational agents [cite: 484]</span>
          [cite_start]<span class="badge-item badge-blue-light">Experience measurement [cite: 485]</span>
          [cite_start]<span class="badge-item badge-blue-dark">Theory + guarantees [cite: 485]</span>
          [cite_start]<span class="badge-item badge-blue-dark">Human studies (ethics) [cite: 484]</span>
        </div>
        <ul style="padding-left: 20px; font-size: 0.95rem; color: #444; margin-bottom: 30px;">
          [cite_start]<li><b>General contribution:</b> controllable, user-aware interaction design that is domain-agnostic[cite: 486].</li>
          [cite_start]<li><b>Case study:</b> SAVs as a real-world interactive autonomous system[cite: 486].</li>
          [cite_start]<li><b>Why it matters:</b> supports transparency, user controllability, and psychological safety in adaptive interactions[cite: 488].</li>
        </ul>

        [cite_start]<h4>Methods [cite: 489]</h4>
        <div class="badge-container">
          [cite_start]<span class="badge-item badge-blue-light"><i class="fas fa-brain"></i> Behavioural modelling [cite: 490]</span>
          [cite_start]<span class="badge-item badge-blue-light"><i class="fas fa-network-wired"></i> ML prediction [cite: 490]</span>
          [cite_start]<span class="badge-item badge-blue-light"><i class="fas fa-users"></i> User study design [cite: 490]</span>
          [cite_start]<span class="badge-item badge-blue-dark"><i class="fas fa-language"></i> NLP sentiment analysis [cite: 490]</span>
          [cite_start]<span class="badge-item badge-blue-dark"><i class="fas fa-cogs"></i> Control theory [cite: 490]</span>
          [cite_start]<span class="badge-item badge-blue-dark"><i class="fas fa-database"></i> Data pipelines [cite: 490]</span>
        </div>
      </div>
    </div>
  </div>


  <div id="project2" class="proj-section proj-green">
    <h2 class="proj-title" style="color: #2e7d32;">Project 2 — AI in Engineering Education</h2>
    
    <div class="proj-callout green-callout">
      [cite_start]<b>One-line summary:</b> I collaborate on designing and evaluating retrieval-augmented LLM systems to provide reliable, equitable student support, with transparent evaluation and classroom-facing deployment[cite: 491, 492].
    </div>

    <div class="proj-grid">
      <div>
        [cite_start]<h3 style="font-size: 1.3rem; margin-bottom: 15px;">What this project delivers [cite: 497]</h3>
        <ul class="icon-list">
          [cite_start]<li><i class="fas fa-laptop-code green-text"></i><b>System development:</b> a retrieval-augmented learning assistant grounded in course materials for faithful answers[cite: 499].</li>
          [cite_start]<li><i class="fas fa-tasks green-text"></i><b>Evaluation framework:</b> protocols to assess accuracy, coverage, and failure modes, supporting responsible use[cite: 500].</li>
          [cite_start]<li><i class="fas fa-chalkboard-teacher green-text"></i><b>Classroom translation:</b> ongoing pilots analysing real student–assistant interactions and teaching impact[cite: 501].</li>
        </ul>

        [cite_start]<h3 style="font-size: 1.3rem; margin-bottom: 15px; margin-top: 30px;">Key outputs [cite: 502]</h3>
        <ul class="icon-list">
          [cite_start]<li><i class="fas fa-check-circle green-text"></i>RAG pipeline and prompt design to improve answer faithfulness[cite: 503].</li>
          [cite_start]<li><i class="fas fa-check-circle green-text"></i>Evaluation design for reliability and coverage across student needs[cite: 503].</li>
          [cite_start]<li><i class="fas fa-check-circle green-text"></i>Evidence from teaching-context deployment informing responsible AI use[cite: 504].</li>
        </ul>

        <div class="fig-placeholder" style="border-color: rgba(46,125,50,0.2);">
          <span><i class="fas fa-project-diagram fa-2x" style="display:block; text-align:center; margin-bottom: 10px; color: #81c784;"></i> [RAG Architecture Placeholder]</span>
        </div>

        <a href="{{ '/publications/' | relative_url }}" class="cta-btn cta-green"><i class="fas fa-book-open"></i> View Related Publications</a>
      </div>

      <div class="info-card">
        [cite_start]<h4>Highlights [cite: 505]</h4>
        <div class="badge-container">
          [cite_start]<span class="badge-item badge-green-light">RAG systems [cite: 506]</span>
          [cite_start]<span class="badge-item badge-green-light">LLM evaluation [cite: 506]</span>
          [cite_start]<span class="badge-item badge-green-light">Real teaching context [cite: 506]</span>
          [cite_start]<span class="badge-item badge-green-dark">Equity &amp; accessibility [cite: 506]</span>
          [cite_start]<span class="badge-item badge-green-dark">Responsible AI [cite: 506]</span>
        </div>
        <ul style="padding-left: 20px; font-size: 0.95rem; color: #444; margin-bottom: 30px;">
          [cite_start]<li><b>Focus:</b> transparent, evidence-based deployment of LLM support tools[cite: 506].</li>
          [cite_start]<li><b>Strength:</b> connecting system design to real user outcomes (students)[cite: 507].</li>
        </ul>

        [cite_start]<h4>Methods [cite: 507]</h4>
        <div class="badge-container">
          [cite_start]<span class="badge-item badge-green-light"><i class="fas fa-search"></i> Retrieval-augmented generation [cite: 508]</span>
          [cite_start]<span class="badge-item badge-green-light"><i class="fas fa-terminal"></i> Prompt engineering [cite: 508]</span>
          [cite_start]<span class="badge-item badge-green-dark"><i class="fas fa-chart-pie"></i> Learning analytics [cite: 508]</span>
          [cite_start]<span class="badge-item badge-green-dark"><i class="fas fa-user-check"></i> Human-centred evaluation [cite: 510]</span>
        </div>
      </div>
    </div>
  </div>

  <div style="text-align: center; max-width: 800px; margin: 0 auto 50px auto; padding: 30px; background: #fff; border-radius: 12px; border: 1px solid #eee;">
    <h2 style="margin-top: 0; font-size: 1.5rem;"><i class="fas fa-hands-helping" style="color: #f39c12;"></i> Collaboration</h2>
    <p style="font-size: 1.05rem; color: #555; line-height: 1.6; margin-bottom: 0;">
      [cite_start]I welcome collaborations on human-centred interactive AI, adaptive autonomy, real-time evaluation of AI systems, and responsible deployment in high-impact domains[cite: 512].
    </p>
  </div>

</div>
