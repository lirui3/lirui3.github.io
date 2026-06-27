---
layout: page
title: Bookshelf
permalink: /books/
description: A quiet literati reading room for books, notes, and yearly shelves.
nav: true
nav_order: 5
bookshelf_style: literati
---

{% assign bookshelf_style = page.bookshelf_style | default: "literati" %}

{% case bookshelf_style %}
  {% when "cyber" %}
    {% include bookshelf/cyber.liquid %}
  {% else %}
    {% include bookshelf/literati.liquid %}
{% endcase %}
