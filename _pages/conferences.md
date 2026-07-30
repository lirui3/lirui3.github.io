---
layout: page
title: Conferences
permalink: /conferences/
description: "Selected conference presentations, research conversations, and moments with collaborators."
nav: true
nav_order: 4
conference_timeline: true
---

<div class="conference-page">
  {% assign linked_paper_count = 0 %}
  {% for event in site.data.conferences %}
    {% assign event_paper_count = event.publications | size %}
    {% assign linked_paper_count = linked_paper_count | plus: event_paper_count %}
  {% endfor %}
  <header class="conference-intro">
    <p class="conference-eyebrow">Research in conversation</p>
    <p class="conference-lead">
      A visual record of presenting work, exchanging ideas, and meeting the people who move research forward.
    </p>
    <div class="conference-summary" aria-label="Conference timeline summary">
      <span><strong>{{ site.data.conferences | size }}</strong> events</span>
      <span><strong>{{ site.data.conferences | map: 'year' | uniq | size }}</strong> years</span>
      <span><strong>{{ linked_paper_count }}</strong> linked papers</span>
    </div>
  </header>

  <div class="conference-timeline" data-conference-timeline>
    <div class="conference-flow" aria-hidden="true">
      <span class="conference-flow-progress"></span>
    </div>

    {% for event in site.data.conferences %}
      <article class="conference-event" data-conference-event>
        <div class="conference-marker" aria-hidden="true">
          <span>{{ event.year }}</span>
        </div>

        <div class="conference-card">
          <div class="conference-card-copy">
            <div class="conference-meta">
              <span class="conference-role">{{ event.role }}</span>
              {% if event.location %}
                <span><i class="fa-solid fa-location-dot" aria-hidden="true"></i>{{ event.location }}</span>
              {% endif %}
            </div>
            <h2>{{ event.name }}</h2>
            <p>{{ event.summary }}</p>
          </div>

          {% assign photo_count = event.photos | size %}
          <div class="conference-gallery conference-gallery-{{ photo_count }}" aria-label="Photos from {{ event.short_name }}">
            {% for photo in event.photos %}
              <button
                class="conference-photo conference-photo-{{ forloop.index }}"
                type="button"
                data-conference-photo
                data-full-src="{{ photo.src | relative_url }}"
                data-alt="{{ photo.alt | escape }}"
                aria-label="Open photo: {{ photo.alt }}"
              >
                {% include figure.liquid path=photo.src alt=photo.alt loading="lazy" sizes="(max-width: 767px) 92vw, 44vw" %}
                <span class="conference-photo-action" aria-hidden="true"><i class="fa-solid fa-expand"></i></span>
              </button>
            {% endfor %}
          </div>

          {% if event.publications %}
            <div class="conference-papers" aria-label="Related conference papers">
              <div class="conference-papers-heading">
                <span><i class="fa-solid fa-file-lines" aria-hidden="true"></i>Presented work</span>
                <a href="{{ '/publications/' | relative_url }}">All publications <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></a>
              </div>
              {% for paper in event.publications %}
                <a class="conference-paper" href="{{ paper.url }}" target="_blank" rel="noopener noreferrer">
                  <span>
                    <strong>{{ paper.title }}</strong>
                    <small>{{ paper.venue }}</small>
                  </span>
                  <i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i>
                </a>
              {% endfor %}
            </div>
          {% endif %}
        </div>
      </article>
    {% endfor %}

    <div class="conference-timeline-end" aria-hidden="true"><span></span></div>

  </div>

  <aside class="conference-footer-note">
    <i class="fa-regular fa-compass" aria-hidden="true"></i>
    <p><strong>The timeline continues.</strong> New presentations and conference papers will be added as the work travels.</p>
  </aside>
</div>

<dialog class="conference-lightbox" data-conference-lightbox aria-label="Conference photo viewer">
  <button class="conference-lightbox-close" type="button" data-lightbox-close aria-label="Close photo viewer">
    <i class="fa-solid fa-xmark" aria-hidden="true"></i>
  </button>
  <img alt="">
  <p></p>
</dialog>
