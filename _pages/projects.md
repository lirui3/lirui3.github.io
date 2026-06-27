---
layout: page
title: Projects
permalink: /projects/
description: "Closed-loop human–AI/HRI research, LLMs in engineering education, and selected transport-safety collaborations."
nav: true
nav_order: 2
---

<div class="projects">

  <p class="page-lead">
    I build <b>closed-loop, human-centred interactive AI</b>—from modelling user perceptions to designing adaptive agents that can be
    <b>measured</b> and <b>regulated</b> during real-time interaction. Below are my core research programs and selected collaborations.
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

    <a href="#ai-in-education" class="nav-card green-card">
      <div class="nav-top">
        <span class="nav-icon"><i class="fas fa-graduation-cap"></i></span>
        <h3>AI in Engineering Education</h3>
      </div>
      <p><b>LLM-based Learning Assistant (CivASK)</b> &amp; evaluation in real teaching contexts</p>
    </a>

    <a href="#other-collaborations" class="nav-card teal-card">
      <div class="nav-top">
        <span class="nav-icon"><i class="fas fa-road"></i></span>
        <h3>Other Collaborations</h3>
      </div>
      <p><b>Traffic psychology and road safety:</b> behaviour-change intervention research with delivery riders</p>
    </a>

  </div>

  <!-- ===================== Thesis / PhD ===================== -->
  <div id="phd" class="proj-section proj-blue anchor-offset">
    <h2 class="proj-title project-title-blue">
      From perception to interaction: Psychological drivers and adaptive conversational agents for shared autonomous vehicles (SAVs)
    </h2>

    <div class="proj-callout blue-callout">
      <b>One-line summary:</b> I develop a closed-loop framework to <b>predict</b> user acceptance, <b>enable</b> scalable real-time interaction,
      <b>measure</b> user experience from dialogue, and <b>regulate</b> agent behaviour via <b>closed-loop feedback + bang–bang control</b>—demonstrated in SAV interaction.
    </div>

    <div class="proj-grid">
      <div>
        <h3 class="proj-subheading">What this program delivers</h3>
        <ul class="icon-list">
          <li><i class="fas fa-chart-line blue-text"></i><b>Prediction:</b> data-driven modelling and interpretable visualisation of psychological drivers of acceptance.</li>
          <li><i class="fas fa-comments blue-text"></i><b>Interaction platform:</b> an LLM-based conversational testbed for open-domain human–agent interaction studies at scale.</li>
          <li><i class="fas fa-heartbeat blue-text"></i><b>Measurement:</b> interaction-level sentiment/subjectivity analysis to quantify user experience signals from dialogue.</li>
          <li><i class="fas fa-sliders-h blue-text"></i><b>Regulation:</b> closed-loop feedback control for adaptive autonomy, enabling real-time adjustment of agent behaviour.</li>
        </ul>

        <h3 class="proj-subheading">Key outputs</h3>
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
        <ul class="plain-info-list">
          <li><b>General contribution:</b> controllable, user-aware interaction design (domain-agnostic).</li>
          <li><b>Case study:</b> SAVs as a real-world interactive autonomous system.</li>
          <li><b>Why it matters:</b> supports transparency, user controllability, and psychological safety in adaptive interactions.</li>
        </ul>

        <h4>Methods</h4>
        <div class="badge-container badge-container-compact">
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
    <h2 class="proj-title project-title-green">
      AI in Engineering Education: LLM-based Learning Assistant (CivASK) &amp; Evaluation
    </h2>

    <div class="proj-callout green-callout">
      <b>One-line summary:</b> I collaborate on designing and evaluating retrieval-augmented LLM systems to provide reliable, equitable student support,
      with transparent evaluation and classroom-facing deployment.
    </div>

    <div class="proj-grid">
      <div>
        <h3 class="proj-subheading">What this program delivers</h3>
        <ul class="icon-list">
          <li><i class="fas fa-laptop-code green-text"></i><b>System development:</b> a retrieval-augmented learning assistant grounded in course materials for faithful answers.</li>
          <li><i class="fas fa-tasks green-text"></i><b>Evaluation framework:</b> protocols to assess accuracy, coverage, and failure modes, supporting responsible use.</li>
          <li><i class="fas fa-chalkboard-teacher green-text"></i><b>Classroom translation:</b> ongoing pilots analysing real student–assistant interactions and teaching impact.</li>
        </ul>

        <h3 class="proj-subheading">Key outputs</h3>
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
        <ul class="plain-info-list">
          <li><b>Focus:</b> transparent, evidence-based deployment of LLM support tools.</li>
          <li><b>Strength:</b> connecting system design to real user outcomes (students).</li>
        </ul>

        <h4>Methods</h4>
        <div class="badge-container badge-container-compact">
          <span class="badge-item badge-green"><i class="fas fa-search"></i> Retrieval-augmented generation</span>
          <span class="badge-item badge-green"><i class="fas fa-terminal"></i> Prompt engineering</span>
          <span class="badge-item badge-green"><i class="fas fa-chart-pie"></i> Learning analytics</span>
          <span class="badge-item badge-green"><i class="fas fa-user-check"></i> Human-centred evaluation</span>
        </div>
      </div>
    </div>

  </div>

  <!-- ===================== Other Collaborations ===================== -->
  <div id="other-collaborations" class="proj-section proj-teal anchor-offset">
    <h2 class="proj-title project-title-teal">
      Other Collaborations: Behaviour Change and Road Safety
    </h2>

    <div class="proj-callout teal-callout">
      <b>One-line summary:</b> I contribute to interdisciplinary transport-safety research that applies behavioural evidence and intervention design to risky riding behaviour among delivery riders.
    </div>

    <div class="proj-grid">
      <div>
        <h3 class="proj-subheading">What this collaboration adds</h3>
        <ul class="icon-list">
          <li><i class="fas fa-people-arrows teal-text"></i><b>Behaviour-change focus:</b> co-authored a behaviour change wheel-informed intervention study targeting risky riding behaviours among delivery riders.</li>
          <li><i class="fas fa-shield-alt teal-text"></i><b>User safety lens:</b> extends my interest in human-centred transport systems from automated mobility to road-user behaviour and safety outcomes.</li>
          <li><i class="fas fa-file-signature teal-text"></i><b>Interdisciplinary publication:</b> contributed to a Q1 journal article in <em>Transportation Research Part F: Traffic Psychology and Behaviour</em>.</li>
        </ul>

        <h3 class="proj-subheading">Key output</h3>
        <ul class="icon-list">
          <li><i class="fas fa-check-circle teal-text"></i>Ye, F., Wang, C., Zhang, Z., Zhu, T., Dou, H., &amp; Guo, L. (2026). Behaviour change wheel-informed intervention for delivery-rider safety.</li>
        </ul>

        <a href="{{ '/publications/#ye2026evaluating' | relative_url }}" class="cta-btn cta-teal">
          <i class="fas fa-book-open"></i> View publication
        </a>
      </div>

      <div class="info-card">
        <h4>Highlights</h4>
        <div class="badge-container">
          <span class="badge-item badge-teal">Traffic psychology</span>
          <span class="badge-item badge-teal">Behaviour change wheel</span>
          <span class="badge-item badge-teal">Delivery-rider safety</span>
          <span class="badge-item badge-teal">Intervention evaluation</span>
        </div>
        <ul class="plain-info-list">
          <li><b>Contribution type:</b> co-authored interdisciplinary applied road-safety research.</li>
          <li><b>Connection to my work:</b> human behaviour, safety, and user-centred transport systems.</li>
        </ul>

        <h4>Methods</h4>
        <div class="badge-container badge-container-compact">
          <span class="badge-item badge-teal"><i class="fas fa-route"></i> Road-safety research</span>
          <span class="badge-item badge-teal"><i class="fas fa-brain"></i> Behavioural analysis</span>
          <span class="badge-item badge-teal"><i class="fas fa-chart-bar"></i> Intervention evaluation</span>
          <span class="badge-item badge-teal"><i class="fas fa-pen-nib"></i> Manuscript development</span>
        </div>
      </div>
    </div>

  </div>

  <div class="collab">
    <h2><i class="fas fa-hands-helping collab-icon"></i>Collaboration</h2>
    <p>
      I welcome collaborations on human-centred interactive AI, adaptive autonomy, real-time evaluation of AI systems, and responsible deployment in high-impact domains.
    </p>
    <div class="collab-actions" aria-label="Collaboration contact links">
      <a href="mailto:Lirui.Guo@monash.edu" class="collab-link collab-link-primary">
        <i class="fas fa-envelope"></i> Lirui.Guo@monash.edu
      </a>
      <a href="https://www.monash.edu/engineering/liruiguo" class="collab-link" target="_blank" rel="noopener noreferrer">
        <i class="fas fa-external-link-alt"></i> Monash profile
      </a>
    </div>
  </div>

</div>
