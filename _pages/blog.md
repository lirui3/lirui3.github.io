---
layout: page
permalink: /blog/
title: Blog
description: Sharing ideas on Research, Teaching, and Life.
nav: true
nav_order: 4
pagination:
  enabled: true
  collection: posts
  permalink: /page/:num/
  per_page: 5
  sort_field: date
  sort_reverse: true
  trail:
    before: 1
    after: 3
---

{% if site.display_tags or site.display_categories %}

  <div class="tag-pills">
    {% for category in site.display_categories %}
      <a class="tag-pill" href="{{ category | slugify | prepend: '/blog/category/' | relative_url }}">
        <i class="fa-solid fa-folder-open"></i> {{ category }}
      </a>
    {% endfor %}
    
    {% for tag in site.display_tags %}
      <a class="tag-pill" href="{{ tag | slugify | prepend: '/blog/tag/' | relative_url }}">
        <i class="fa-solid fa-hashtag"></i> {{ tag }}
      </a>
    {% endfor %}
  </div>
  {% endif %}

{% assign featured_posts = site.posts | where: "featured", "true" %}
{% if featured_posts.size > 0 %}

<h2 class="section-heading">Featured</h2>
<div class="container featured-posts">
{% assign is_even = featured_posts.size | modulo: 2 %}
<div class="row row-cols-{% if featured_posts.size <= 2 or is_even == 0 %}2{% else %}3{% endif %}">
{% for post in featured_posts %}
<div class="col mb-4">
<a href="{{ post.url | relative_url }}" class="featured-post-link">
<div class="card hoverable">
<div class="card-body">
<h3 class="card-title text-lowercase">{{ post.title }}</h3>
<p class="card-text">{{ post.description }}</p>
</div>
</div>
</a>
</div>
{% endfor %}
</div>
</div>
<hr>
{% endif %}

  <div class="post-list-container">

    {% if page.pagination.enabled %}
      {% assign postlist = paginator.posts %}
    {% else %}
      {% assign postlist = site.posts %}
    {% endif %}

    {% for post in postlist %}

      {% if post.external_source == blank %}
        {% assign read_time = post.content | number_of_words | divided_by: 180 | plus: 1 %}
      {% else %}
        {% assign read_time = post.feed_content | strip_html | number_of_words | divided_by: 180 | plus: 1 %}
      {% endif %}
      {% assign year = post.date | date: "%Y" %}

      {% assign post_image = nil %}
      {% if post.thumbnail %}
        {% assign post_image = post.thumbnail %}
      {% elsif post.img %}
        {% assign post_image = post.img %}
      {% endif %}

      <div class="post-item">
        <div class="row align-items-center">

          <div class="{% if post_image %}col-md-9{% else %}col-12{% endif %}">

            <h3>
              {% if post.redirect == blank %}
                <a class="post-title-link" href="{{ post.url | relative_url }}">{{ post.title }}</a>
              {% elsif post.redirect contains '://' %}
                <a class="post-title-link" href="{{ post.redirect }}" target="_blank">{{ post.title }} <i class="fa-solid fa-arrow-up-right-from-square fa-2xs"></i></a>
              {% else %}
                <a class="post-title-link" href="{{ post.redirect | relative_url }}">{{ post.title }}</a>
              {% endif %}
            </h3>

            <p class="post-desc">
              {% if post.description %}{{ post.description }}{% else %}{{ post.content | strip_html | truncatewords: 20 }}{% endif %}
            </p>

            <div class="post-meta-row">
              <span><i class="fa-solid fa-calendar meta-icon"></i> {{ post.date | date: '%b %d, %Y' }}</span>
              <span><i class="fa-solid fa-clock meta-icon"></i> {{ read_time }} min read</span>

              {% if post.tags.size > 0 %}
                <span class="d-none d-sm-inline-block">
                  <i class="fa-solid fa-tags meta-icon"></i>
                  {{ post.tags | join: ", " }}
                </span>
              {% endif %}
            </div>

          </div>

          {% if post_image %}
          <div class="col-md-3">
            <a href="{{ post.url | relative_url }}" class="post-thumb-container d-block">
              <img class="post-thumb-img" src="{{ post_image | relative_url }}" alt="{{ post.title }}">
            </a>
          </div>
          {% endif %}

        </div>
      </div>

    {% endfor %}

  </div>

{% if page.pagination.enabled %}
{% include pagination.liquid %}
{% endif %}
