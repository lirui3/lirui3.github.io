---
layout: page
title: Bookshelf
permalink: /books/
description: My reading journey through time.
nav: true
nav_order: 7
---

<script src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script>

<style>
  /* === 1. 页面整体布局 === */
  .bookshelf-wrapper {
    position: relative;
    padding-bottom: 50px;
  }

  /* === 2. 顶部展示柜 (Showcase) === */
  .showcase-container {
    margin-bottom: 60px;
    padding: 30px;
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.05);
    text-align: center;
    border: 1px solid #eaeaea;
  }

  .showcase-title {
    font-size: 1.2rem;
    font-weight: bold;
    color: #555;
    margin-bottom: 25px;
    text-transform: uppercase;
    letter-spacing: 2px;
    border-bottom: 2px solid #f0f0f0;
    display: inline-block;
    padding-bottom: 5px;
  }

  .showcase-shelf {
    display: flex;
    justify-content: center;
    gap: 40px;
    flex-wrap: wrap;
    align-items: flex-end; /* 底部对齐 */
  }

  .showcase-book {
    width: 100px;
    transition: transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    cursor: pointer;
    position: relative;
  }

  .showcase-book:hover {
    transform: translateY(-10px) scale(1.05);
    z-index: 10;
  }

  .showcase-book img {
    width: 100%;
    border-radius: 4px;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.2);
    display: block; /* 消除图片底部空隙 */
  }

  /* 书的倒影效果 */
  .showcase-book::after {
    content: '';
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    height: 40px;
    background: linear-gradient(to bottom, rgba(255,255,255,0.3) 0%, rgba(255,255,255,1) 100%);
    transform: scaleY(-1);
    opacity: 0.3;
    pointer-events: none;
    background-image: inherit; /* 继承图片有点难，这里简单用遮罩模拟 */
  }

  /* === 3. 主书架容器 === */
  .bookshelf-main {
    padding: 40px 80px 40px 20px; /* 右边留出更多空间给时光长河 */
    background-color: #faf9f6; /* 温暖的米白色背景 */
    border-radius: 15px;
    position: relative;
    box-shadow: inset 0 0 50px rgba(0,0,0,0.02);
  }

  /* === 4. 时光长河 (River of Time) === */
  .time-river {
    position: absolute;
    top: 20px;
    bottom: 20px;
    right: 40px; /* 放在右侧 */
    width: 8px; /* 河流宽度 */
    /* 流动的透明渐变效果 */
    background: linear-gradient(to bottom, 
      rgba(66, 165, 245, 0) 0%, 
      rgba(66, 165, 245, 0.4) 15%, 
      rgba(66, 165, 245, 0.6) 50%, 
      rgba(66, 165, 245, 0.4) 85%, 
      rgba(66, 165, 245, 0) 100%);
    border-radius: 10px;
    z-index: 0;
    filter: blur(2px); /* 模糊一点，像水一样 */
  }

  /* === 5. 每一层书架 (Wood Shelf) === */
  .shelf {
    /* 关键修复：用 flex-end 让书沉底 */
    display: flex;
    align-items: flex-end; 
    justify-content: flex-start;
    flex-wrap: wrap;
    gap: 6px;
    
    /* 书架的物理样式 */
    border-bottom: 15px solid #8d6e63; /* 木板颜色 */
    margin-bottom: 120px; /* 层间距 */
    padding: 0 30px; /* 书左右的边距 */
    position: relative;
    
    /* 3D 效果：木板阴影 */
    box-shadow: 0 10px 15px -5px rgba(0,0,0,0.3), inset 0 -2px 5px rgba(0,0,0,0.2);
    z-index: 1;
  }

  /* 最后一层不需要太大间距 */
  .shelf:last-of-type {
    margin-bottom: 40px;
  }

  /* === 6. 年份标签 & 标记点 === */
  .year-marker-container {
    position: absolute;
    right: -56px; /* 调整到时光长河的位置 */
    bottom: -8px; /* 对齐书架板子 */
    display: flex;
    align-items: center;
    flex-direction: row-reverse; /* 文字在点的左边 */
  }

  .water-dot {
    width: 16px;
    height: 16px;
    background-color: #42a5f5;
    border: 3px solid #faf9f6;
    border-radius: 50%;
    box-shadow: 0 0 10px rgba(66, 165, 245, 0.6);
    z-index: 2;
  }

  .year-text {
    margin-right: 15px; /* 文字离点的距离 */
    font-family: 'Courier New', monospace;
    font-weight: 900;
    font-size: 28px;
    color: rgba(0,0,0,0.1); /* 默认非常淡，像背景 */
    transition: all 0.3s ease;
    user-select: none;
  }
  
  /* 鼠标悬停年份变清晰 */
  .shelf:hover .year-text {
    color: #42a5f5;
    transform: scale(1.1);
  }

  /* === 7. 书脊样式 (Book Spine) === */
  .book-spine {
    width: 32px;
    height: 150px; /* 基础高度 */
    background-color: #ddd; /* 默认颜色，会被JS覆盖 */
    color: rgba(255,255,255,0.9);
    writing-mode: vertical-rl;
    text-orientation: mixed;
    text-align: center;
    font-size: 11px;
    letter-spacing: 1px;
    padding: 8px 0;
    cursor: pointer;
    
    /* 拟物化：圆角书脊 + 阴影 */
    border-radius: 4px 4px 0 0;
    box-shadow: 
      inset 3px 0 5px rgba(255,255,255,0.15), /* 高光 */
      inset -2px 0 5px rgba(0,0,0,0.2), /* 阴影 */
      4px 0 5px rgba(0,0,0,0.2); /* 投影 */
      
    transition: transform 0.25s cubic-bezier(0.34, 1.56, 0.64, 1);
    position: relative;
    /* 关键：确保书紧贴底部边框 */
    margin-bottom: 0; 
    
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }

  .book-spine:hover {
    transform: translateY(-15px) scale(1.02);
    z-index: 100;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.3);
  }

  /* 随机高度让书架更真实 */
  .book-spine:nth-child(3n+1) { height: 160px; }
  .book-spine:nth-child(3n+2) { height: 145px; }
  .book-spine:nth-child(4n+3) { height: 155px; }
  .book-spine:nth-child(5n+1) { height: 140px; }

  /* === 8. 模态框 (Modal) - 保持不变 === */
  .book-modal { display: none; position: fixed; z-index: 2000; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0,0,0,0.85); backdrop-filter: blur(8px); justify-content: center; align-items: center; }
  .book-modal-content { background-color: #fff; padding: 30px; border-radius: 12px; max-width: 400px; width: 90%; text-align: center; position: relative; box-shadow: 0 20px 50px rgba(0,0,0,0.5); animation: zoomIn 0.3s; }
  .book-modal img { max-height: 350px; width: auto; box-shadow: 5px 10px 20px rgba(0,0,0,0.3); margin-bottom: 20px; border-radius: 4px; }
  .modal-text-group { text-align: left; margin-top: 15px; }
  .modal-title { font-size: 1.2rem; font-weight: bold; margin-bottom: 10px; color: #333; }
  .modal-desc { font-size: 0.9rem; color: #666; line-height: 1.6; margin-bottom: 20px; }
  .close-btn { position: absolute; top: 15px; right: 20px; color: #aaa; font-size: 30px; font-weight: bold; cursor: pointer; }
  .close-btn:hover { color: #333; }
  @keyframes zoomIn { from {transform: scale(0.8); opacity: 0;} to {transform: scale(1); opacity: 1;} }
</style>

<div class="bookshelf-wrapper">

  <div class="showcase-container">
    <div class="showcase-title">Editor's Pick</div>
    <div class="showcase-shelf">
      {% comment %} 
        逻辑：优先找 recommended: true 的书。
        如果没有设置，就默认拿所有书里的前 4 本充当门面，防止留白。
      {% endcomment %}
      
      {% assign recommended_books = site.books | where: "recommended", true %}
      {% if recommended_books.size == 0 %}
        {% assign display_books = site.books | slice: 0, 4 %}
      {% else %}
        {% assign display_books = recommended_books %}
      {% endif %}

      {% for book in display_books %}
        <div class="showcase-book" 
             onclick="openBook('{{ book.title }}', '{{ book.description | escape }}', '{{ book.img | relative_url }}', '{{ book.url | relative_url }}')">
          <img src="{{ book.img | relative_url }}" alt="{{ book.title }}">
        </div>
      {% endfor %}
    </div>
  </div>

  <div class="bookshelf-main">
    
    <div class="time-river"></div>

    {% assign books_by_year = site.books | group_by: "year" | sort: "name" | reverse %}
    
    {% for year_group in books_by_year %}
      <div class="shelf">
        
        <div class="year-marker-container">
          <div class="year-text">{{ year_group.name }}</div>
          <div class="water-dot"></div>
        </div>

        {% assign year_books = year_group.items | sort: "importance" %}
        {% for book in year_books %}
          <div class="book-spine" 
               data-img="{{ book.img | relative_url }}"
               onclick="openBook('{{ book.title }}', '{{ book.description | escape }}', '{{ book.img | relative_url }}', '{{ book.url | relative_url }}')">
            {{ book.title }}
          </div>
        {% endfor %}
      </div>
    {% endfor %}

    {% if site.books.size == 0 %}
      <div style="text-align:center; padding: 50px; color: #999;">Updating library...</div>
    {% endif %}

  </div>

</div>

<div id="bookModal" class="book-modal">
  <div class="book-modal-content">
    <span class="close-btn" onclick="closeBook()">&times;</span>
    <img id="modalImg" src="" alt="Book Cover">
    <div class="modal-text-group">
      <div id="modalTitle" class="modal-title"></div>
      <div id="modalDesc" class="modal-desc"></div>
      <a id="modalBtn" href="#" class="btn btn-primary btn-sm" style="width: 100%;">Read More</a>
    </div>
  </div>
</div>

<script>
  // 1. 自动填色 (保持不变)
  window.addEventListener('load', function() {
    const colorThief = new ColorThief();
    const spines = document.querySelectorAll('.book-spine');
    spines.forEach(spine => {
      const imgUrl = spine.getAttribute('data-img');
      const img = new Image();
      img.crossOrigin = "Anonymous";
      img.src = imgUrl;
      img.onload = function() {
        try {
          const color = colorThief.getColor(img);
          // 增加一点透明度让书脊更有质感
          spine.style.backgroundColor = `rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.95)`;
        } catch (e) { }
      };
    });
  });

  // 2. 弹窗逻辑
  function openBook(title, desc, img, url) {
    document.getElementById('modalTitle').innerText = title;
    document.getElementById('modalDesc').innerText = desc;
    document.getElementById('modalImg').src = img;
    document.getElementById('modalBtn').href = url;
    document.getElementById('bookModal').style.display = "flex";
  }
  function closeBook() { document.getElementById('bookModal').style.display = "none"; }
  window.onclick = function(event) {
    if (event.target == document.getElementById('bookModal')) { closeBook(); }
  }
</script>
