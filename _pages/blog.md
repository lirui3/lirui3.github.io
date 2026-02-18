---
layout: default
permalink: /blog/
title: blog
nav: true
nav_order: 1
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

<style>
  /* 头部区域 */
  .blog-header {
    margin-bottom: 40px;
    border-bottom: 1px solid #eee;
    padding-bottom: 20px;
  }
  .blog-title {
    font-weight: 700;
    letter-spacing: -0.5px;
    color: #333;
  }
  .blog-subtitle {
    color: #666;
    font-size: 1.1rem;
    font-weight: 300;
  }

  /* 标签胶囊样式 */
  .tag-pills {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-bottom: 30px;
  }
  .tag-pill {
    background-color: #f8f9fa;
    border: 1px solid #e9ecef;
    border-radius: 50px;
    padding: 5px 15px;
    font-size: 0.85rem;
    color: #555;
    transition: all 0.2s;
    text-decoration: none !important;
  }
  .tag-pill:hover {
    background-color: #007bff;
    color: #fff;
    border-color: #007bff;
    transform: translateY(-2px);
  }
  .tag-pill i { margin-right: 4px; color: #aaa; }
  .tag-pill:hover i { color: #fff; }

  /* 文章列表卡片化 */
  .post-item {
    background: #fff;
    border-radius: 12px;
    padding: 25px;
    margin-bottom: 25px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border: 1px solid #f0f0f0;
  }
  
  /* 悬停效果：浮起 + 阴影 */
  .post-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0,0,0,0.08);
    border-color: transparent;
  }

  .post-title-link {
    font-size: 1.5rem;
    font-weight: 600;
    color: #2c3e50 !important; /* 强制深色标题 */
    text-decoration: none;
    line-height: 1.3;
  }
  .post-title-link:hover {
    color: #007bff !important; /* 悬停变蓝 */
  }

  .post-desc {
    color: #666;
    font-size: 0.95rem;
    line-height: 1.6;
    margin-top: 10px;
    margin-bottom: 15px;
  }

  .post-meta-row {
    font-size: 0.85rem;
    color: #999;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    display: flex;
    align-items: center;
    gap: 15px;
  }
  
  .meta-icon { margin-right: 5px; }

  /* 图片样式 */
  .post-thumb-container {
    height: 100%;
    min-height: 160px;
    border-radius: 8px;
    overflow: hidden;
    position: relative;
  }
  .post-thumb-img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease;
  }
  .post-item:hover .post-thumb-img {
    transform: scale(1.05); /* 悬停时图片轻微放大 */
  }
</style>

<div class="post">

  <div class="blog-header">
    <h1 class="blog-title">
      {% if site.blog_name %}{{ site.blog_name }}{% else %}Blog{% endif %}
    </h1>
    <h2 class="blog-subtitle">
      {% if site.blog_description %}{{ site.blog_description }}{% else %}Thinking, researching, and coding.{% endif %}
    </h2>
  </div>

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
    <h3 style="margin-bottom: 20px; font-weight: bold;">Featured</h3>
    <div class="container featured-posts">
      {% assign is_even = featured_posts.size | modulo: 2 %}
      <div class="row row-cols-{% if featured_posts.size <= 2 or is_even == 0 %}2{% else %}3{% endif %}">
        {% for post in featured_posts %}
        <div class="col mb-4">
          <a href="{{ post.url | relative_url }}" style="text-decoration:none;">
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

</div>
