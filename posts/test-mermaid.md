---
createdAt: 1785245348274
title: Mermaid测试
---

引入了Mermaid。

```mermaid
flowchart LR
    A[写博客] --> B{含 mermaid?}
    B -- 是 --> C[自动渲染 SVG]
    B -- 否 --> D[不下载 mermaid chunk]
```