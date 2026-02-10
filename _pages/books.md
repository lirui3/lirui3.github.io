---
layout: page
title: My Library
permalink: /books/
description: A 3D bookshelf of my reading list.
nav: true
nav_order: 7
---

<style>
  /* 书架整体容器 */
  .bookshelf-container {
    padding: 50px 20px;
    background-color: #f4f4f4; /* 墙壁颜色 */
    border-radius: 10px;
  }

  /* 每一层木板 */
  .shelf {
    border-bottom: 20px solid #a0522d; /* 木头颜色 */
    border-left: 20px solid transparent;
    border-right: 20px solid transparent;
    height: 10px; /* 书架板的厚度视觉差 */
    margin-bottom: 20px; /* 层间距 */
    position: relative;
    box-shadow: 0 10px 20px rgba(0,0,0,0.3);
    display: flex;
    align-items: flex-end; /* 让书都在底部对齐 */
    padding: 0 20px;
    justify-content: flex-start;
    flex-wrap: wrap;
    gap: 4px; /* 书之间的间隙 */
  }

  /* 书脊 (默认状态) */
  .book-spine {
    width: 35px;  /* 书的厚度 */
    height: 160px; /* 书的高度 - 基础高度 */
    background-color: #444; /* 默认颜色 */
    color: #fff;
    writing-mode: vertical-rl; /* 文字竖排 */
    text-orientation: mixed;
    text-align: center;
    font-size: 12px;
    padding: 5px 0;
    cursor: pointer;
    border-radius: 3px;
    box-shadow: inset 2px 0 5px rgba(255,255,255,0.2), inset -2px 0 5px rgba(0,0,0,0.3), 2px 2px 5px rgba(0,0,0,0.3);
    transition: transform 0.2s, margin-bottom 0.2s;
    position: relative;
    bottom: 0;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }

  /* 鼠标悬停效果：书抽出来一点 */
  .book-spine:hover {
    transform: translateY(-10px) scale(1.05);
    z-index: 10;
    background-color: #555;
  }

  /* 随机高度和颜色 (通过 nth-child 模拟) */
  .book-spine:nth-child(3n+1) { height: 170px; background-color: #2c3e50; }
  .book-spine:nth-child(3n+2) { height: 155px; background-color: #8e44ad; }
  .book-spine:nth-child(3n+3) { height: 165px; background-color: #c0392b; }
  .book-spine:nth-child(4n+1) { background-color: #27ae60; }
  .book-spine:nth-child(5n+2) { background-color: #d35400; }
  .book-spine:nth-child(7n) { height: 145px; background-color: #f39c12; color: #333; }

  /* 模态框 (点击后显示书的封面) */
  .book-modal {
    display: none; /* 默认隐藏 */
    position: fixed;
    z-index: 1000;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.8);
    backdrop-filter: blur(5px);
    justify-content: center;
    align-items: center;
  }

  .book-modal-content {
    background-color: #fff;
    margin: auto;
    padding: 20px;
    border-radius: 8px;
    max-width: 600px;
    width: 90%;
    text-align: center;
    position: relative;
    animation: zoomIn 0.3s;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .book-modal img {
    max-height: 400px;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.5);
    margin-bottom: 20px;
    border-radius: 5px;
  }

  .close-btn {
    position: absolute;
    top: 10px;
    right: 20px;
    color: #aaa;
    font-size: 28px;
    font-weight: bold;
    cursor: pointer;
  }

  .close-btn:hover { color: #000; }

  @keyframes zoomIn {
    from {transform: scale(0);}
    to {transform: scale(1);}
  }
</style>

<div class="bookshelf-container">
  <div class="shelf">
    {% assign sorted_books = site.books | sort: "importance" %}
    {% for book in sorted_books %}
      <div class="book-spine" 
           onclick="openBook('{{ book.title }}', '{{ book.description | escape }}', '{{ book.img | relative_url }}', '{{ book.url | relative_url }}')">
        {{ book.title }}
      </div>
    {% endfor %}
  </div>
  <div class="shelf"></div>
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
  function openBook(title, desc, img, url) {
    document.getElementById('modalTitle').innerText = title;
    document.getElementById('modalDesc').innerText = desc;
    document.getElementById('modalImg').src = img;
    document.getElementById('modalLink').href = url;
    document.getElementById('modalBtn').href = url;
    
    // 显示弹窗
    const modal = document.getElementById('bookModal');
    modal.style.display = "flex";
  }

  function closeBook() {
    document.getElementById('bookModal').style.display = "none";
  }

  // 点击弹窗外部也可以关闭
  window.onclick = function(event) {
    const modal = document.getElementById('bookModal');
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
</script>
