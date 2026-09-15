<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>我的工具箱</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    body {
      font-family: system-ui, 'Segoe UI', Roboto, sans-serif;
      background: #f5f7fb;
      color: #1e2b4f;
      min-height: 100vh;
      padding: 2rem 1rem;
    }
    .container {
      max-width: 900px;
      margin: 0 auto;
    }
    header {
      text-align: center;
      margin-bottom: 3rem;
    }
    header h1 {
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    header p {
      color: #6b7b9e;
      margin-top: 0.5rem;
      font-size: 1rem;
    }
    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 1.5rem;
    }
    .card {
      background: white;
      border-radius: 20px;
      padding: 1.8rem 1.5rem;
      text-decoration: none;
      color: inherit;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.04);
      border: 1px solid #e6ecf5;
      transition: all 0.2s ease;
      display: flex;
      flex-direction: column;
    }
    .card:hover {
      transform: translateY(-4px);
      box-shadow: 0 16px 32px rgba(30, 43, 79, 0.1);
      border-color: #b7c9e8;
    }
    .card-icon {
      font-size: 2rem;
      margin-bottom: 0.8rem;
    }
    .card-title {
      font-size: 1.2rem;
      font-weight: 600;
      margin-bottom: 0.4rem;
    }
    .card-desc {
      font-size: 0.9rem;
      color: #7b8aa6;
      line-height: 1.4;
    }
    footer {
      text-align: center;
      margin-top: 3rem;
      color: #9aaac9;
      font-size: 0.85rem;
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <h1>🧰 我的工具箱</h1>
      <p>一些实用的测试和小工具</p>
    </header>

    <div class="grid">
      <!-- 卡片 1：霍兰德测试 -->
      <a class="card" href="./holland/index.html">
        <div class="card-icon">🧭</div>
        <div class="card-title">霍兰德职业兴趣测试</div>
        <div class="card-desc">90 道题，测出你的职业兴趣代码（RIA / SEC 等）</div>
      </a>

      <!-- 以后加新功能，就照着上面复制一个 <a> 标签，改一下链接和文字 -->
      <!--
      <a class="card" href="./tool2/index.html">
        <div class="card-icon">📊</div>
        <div class="card-title">新功能名称</div>
        <div class="card-desc">功能简介</div>
      </a>
      -->
    </div>

    <footer>持续更新中…</footer>
  </div>
</body>
</html>
