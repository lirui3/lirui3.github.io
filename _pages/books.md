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
  /* 容器：为了放时间轴，右边留出更多空间 */
  .bookshelf-container {
    padding: 50px 60px 50px 20px; /* 右边留 60px 给时间轴 */
    background-color: #f4f4f4;
    border-radius: 10px;
    position: relative; /* 为时间轴线定位 */
    overflow: visible; /* 允许标签超出边界 */
  }

  /* 纵向时间轴线 (贯穿整个书架的一条线) */
  .bookshelf-container::after {
    content: '';
    position: absolute;
    top: 40px;
    bottom: 40px;
    right: 30px; /* 线的位置 */
    width: 4px;
    background-color: #d1d1d1;
    border-radius: 2px;
    z-index: 0;
  }

  /* 每一层书架 (Wood Plank) */
  .shelf {
    border-bottom: 20px solid #a0522d;
    border-left: 20px solid transparent;
    border-right: 20px solid transparent;
    height: 10px;
    margin-bottom: 180px; /* 增加间距，避免年份标签拥挤 */
    position: relative;
    box-shadow: 0 10px 20px rgba(0,0,0,0.3);
    display: flex;
    align-items: flex-end;
    padding: 0 20px;
    justify-content: flex-start;
    flex-wrap: wrap;
    gap: 4px;
    z-index: 1;
  }

  /* 最后一层去掉底部间距 */
  .shelf:last-of-type {
    margin-bottom: 0;
  }

  /* 时间轴标记点 (Timeline Dot) */
  .timeline-marker {
    position: absolute;
    right: -50px; /* 移动到书架右侧 */
    bottom: -10px; /* 对齐木板中心 */
    width: 20px;
    height: 20px;
    background-color: #a0522d; /* 和书架同色 */
    border: 4px solid #f4f4f4;
    border-radius: 50%;
    z-index: 2;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
  }

  /* 年份文字 */
  .timeline-year {
    position: absolute;
    right: -100px; /* 年份显示在点的右侧，或者根据需要调整 */
    bottom: -8px;
    font-size: 24px;
    font-weight: bold;
    color: #a0522d;
    font-family: 'Courier New', Courier, monospace; /* 复古字体 */
    text-shadow: 1px 1px 0 #fff;
    width: 60px;
    text-align: left;
  }
  
  /* 为了让年份标签不跑出屏幕，我们把它移到点的左边可能更好？
     不，用户要求"右侧增加"，但如果屏幕窄可能会溢出。
     这里我把它设计在点的左侧上方，或者点的正旁边。
     为了美观，我把它放在点的旁边。*/
  .timeline-year {
    right: -90px; /* 放在线的最右边 */
    text-align: left;
  }

  /* 书脊样式 (保持不变) */
  .book-spine {
    width: 35px;
    height: 160px;
    background-color: #555;
    color: #fff;
    writing-mode: vertical-rl;
    text-orientation: mixed;
    text-align: center;
    font-size: 12px;
    padding: 5px 0;
    cursor: pointer;
    border-radius: 3px 3px 0 0;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.8);
    box-shadow: inset 2px 0 5px rgba(255,255,255,0.2), inset -2px 0 5px rgba(0,0,0,0.3), 2px 2px 5px rgba(0,0,0,0.3);
    transition: transform 0.2s, background-color 0.5s;
    position: relative;
    bottom: 0;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }

  .book-spine:hover {
    transform: translateY(-10px) scale(1.05);
    z-index: 10;
    filter: brightness(1.1);
  }

  /* 随机高度 */
  .book-spine:nth-child(3n+1) { height: 170px; }
  .book-spine:nth-child(3n+2) { height: 155px; }
  .book-spine:nth-child(3n+3) { height: 165px; }
  .book-spine:nth-child(7n) { height: 145px; }

  /* 模态框样式 (保持不变) */
  .book-modal { display: none; position: fixed; z-index: 1000; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0,0,0,0.8); backdrop-filter: blur(5px); justify-content: center; align-items: center; }
  .book-modal-content { background-color: #fff; margin: auto; padding: 20px; border-radius: 8px; max-width: 600px; width: 90%; text-align: center; position: relative; animation: zoomIn 0.3s; display: flex; flex-direction: column; align-items: center; }
  .book-modal img { max-height: 400px; box-shadow: 5px 5px 15px rgba(0,0,0,0.5); margin-bottom: 20px; border-radius: 5px; }
  .close-btn { position: absolute; top: 10px; right: 20px; color: #aaa; font-size: 28px; font-weight: bold; cursor: pointer; }
  .close-btn:hover { color: #000; }
  @keyframes zoomIn { from {transform: scale(0);} to {transform: scale(1);} }
</style>

<div class="bookshelf-container">
  
  {% comment %} 1. 获取所有书并按年份分组 {% endcomment %}
  {% assign books_by_year = site.books | group_by: "year" | sort: "name" | reverse %}

  {% comment %} 2. 循环每一组年份 {% endcomment %}
  {% for year_group in books_by_year %}
    
    <div class="shelf">
      
      <div class="timeline-marker"></div>
      <div class="timeline-year">{{ year_group.name }}</div>

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
    <div class="shelf"></div>
  {% endif %}

</div>

<div id="bookModal" class="book-modal">
  <div class="book-modal-content">
    <span class="close-btn" onclick="closeBook()">&times;</span>
    <h3 id="modalTitle">Book Title</h3>
    <a id="modalLink" href="#">
      <img id="modalImg" src="" alt="Book Cover">
    </a>
    <p id="modalDesc" style="color: #666; text-align: left; width: 100%;"></p>
    <a id="modalBtn" href="#" class="btn btn-primary btn-sm">Read More</a>
  </div>
</div>

<script>
  // 1. 颜色提取逻辑 (保持不变)
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
          spine.style.backgroundColor = `rgb(${color[0]}, ${color[1]}, ${color[2]})`;
        } catch (e) { console.log("Color extraction failed"); }
      };
    });
  });

  // 2. 弹窗交互逻辑 (保持不变)
  function openBook(title, desc, img, url) {
    document.getElementById('modalTitle').innerText = title;
    document.getElementById('modalDesc').innerText = desc;
    document.getElementById('modalImg').src = img;
    document.getElementById('modalLink').href = url;
    document.getElementById('modalBtn').href = url;
    document.getElementById('bookModal').style.display = "flex";
  }
  function closeBook() { document.getElementById('bookModal').style.display = "none"; }
  window.onclick = function(event) {
    if (event.target == document.getElementById('bookModal')) { closeBook(); }
  }
</script>
