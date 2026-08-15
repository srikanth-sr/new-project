<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop — modern e‑commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ---------- reset & variables ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fafcff;
      --primary: #0b1e33;
      --accent: #2b7fff;
      --accent-light: #eef4ff;
      --muted: #5e6f8d;
      --card: #ffffff;
      --surface: #f2f6fe;
      --success: #2b7f4f;
      --radius: 16px;
      --container: 1280px;
      --shadow-sm: 0 8px 24px rgba(0, 20, 50, 0.04);
      --shadow-md: 0 12px 40px rgba(0, 20, 50, 0.06);
      --transition: 0.2s ease;
    }

    html,
    body {
      height: 100%;
    }

    body {
      margin: 0;
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      -webkit-font-smoothing: antialiased;
      line-height: 1.5;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- header ---------- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0, 20, 50, 0.04);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: var(--primary);
    }

    .brand .accent {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--primary);
      transition: background 0.15s, color 0.15s;
    }

    nav.main-nav li a:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    .search {
      display: flex;
      align-items: center;
      gap: 8px;
      background: var(--surface);
      padding: 6px 12px 6px 18px;
      border-radius: 40px;
      min-width: 220px;
      border: 1px solid transparent;
      transition: border 0.2s, box-shadow 0.2s;
    }

    .search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 3px rgba(43, 127, 255, 0.12);
      background: white;
    }

    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
      padding: 6px 0;
      color: var(--primary);
    }

    .search input::placeholder {
      color: var(--muted);
      font-weight: 400;
    }

    .icon-btn {
      background: transparent;
      border: 0;
      cursor: pointer;
      color: var(--primary);
      font-size: 18px;
      padding: 6px;
      border-radius: 40px;
      transition: background 0.15s, color 0.15s;
      width: 40px;
      height: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }

    .icon-btn:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 4px;
      padding: 4px 8px;
    }

    .cart-count {
      position: absolute;
      top: -2px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      min-width: 20px;
      height: 20px;
      border-radius: 30px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 0 5px;
      box-shadow: 0 4px 8px rgba(43, 127, 255, 0.25);
    }

    .mobile-toggle {
      display: none;
      border: 0;
      background: transparent;
      font-size: 22px;
      cursor: pointer;
      color: var(--primary);
      padding: 4px 8px;
    }

    #mobileMenu {
      background: rgba(255, 255, 255, 0.98);
      backdrop-filter: blur(8px);
      border-top: 1px solid rgba(0, 20, 50, 0.04);
      padding: 8px 0 16px;
    }

    #mobileMenu ul {
      list-style: none;
      padding: 0;
      margin: 0;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }

    #mobileMenu ul li a {
      display: block;
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      color: var(--primary);
      transition: background 0.15s;
    }

    #mobileMenu ul li a:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    /* ---------- hero ---------- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background:
        linear-gradient(135deg, rgba(11, 30, 51, 0.75), rgba(11, 30, 51, 0.55)),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      color: white;
      min-height: 400px;
      padding: 60px 20px;
      border-radius: 0 0 var(--radius) var(--radius);
      margin-bottom: 8px;
    }

    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 44px;
      font-weight: 700;
      margin: 0 0 12px;
      letter-spacing: -0.02em;
      line-height: 1.2;
    }

    .hero p {
      margin: 0 auto 28px;
      opacity: 0.92;
      max-width: 640px;
      font-size: 18px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 15px;
      cursor: pointer;
      border: 0;
      transition: transform 0.15s, box-shadow 0.15s, background 0.15s;
    }

    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 20px rgba(43, 127, 255, 0.25);
    }

    .btn-primary:hover {
      background: #1a6aff;
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(43, 127, 255, 0.3);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.2);
      color: white;
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.2);
    }

    /* ---------- sections ---------- */
    .section {
      padding: 56px 0 40px;
    }

    .section-title {
      font-family: 'Poppins', sans-serif;
      font-size: 28px;
      font-weight: 600;
      letter-spacing: -0.3px;
      margin: 0 0 6px;
    }

    .title {
      text-align: center;
      margin-bottom: 28px;
    }

    .title .muted {
      font-size: 16px;
    }

    .muted {
      color: var(--muted);
    }

    .grid {
      display: grid;
      gap: 24px;
    }

    /* categories */
    .categories {
      grid-template-columns: repeat(6, 1fr);
    }

    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: transform 0.2s, box-shadow 0.2s;
      cursor: default;
      border: 1px solid rgba(0, 20, 50, 0.02);
    }

    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-md);
      border-color: rgba(43, 127, 255, 0.08);
    }

    .cat-card .icon {
      font-size: 32px;
      color: var(--accent);
      margin-bottom: 10px;
      background: var(--accent-light);
      width: 64px;
      height: 64px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 60px;
      margin: 0 auto 12px;
    }

    .cat-card h4 {
      font-size: 15px;
      font-weight: 600;
      margin: 0 0 2px;
    }

    .cat-card .muted {
      font-size: 13px;
    }

    /* products */
    .products {
      grid-template-columns: repeat(4, 1fr);
    }

    .product {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      box-shadow: var(--shadow-sm);
      transition: transform 0.2s, box-shadow 0.2s;
      border: 1px solid rgba(0, 20, 50, 0.02);
      position: relative;
    }

    .product:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-md);
    }

    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      display: block;
      background: #f0f4fe;
    }

    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--success);
      color: white;
      padding: 4px 12px;
      border-radius: 30px;
      font-weight: 700;
      font-size: 12px;
      letter-spacing: 0.3px;
    }

    .product-badge.hot {
      background: #e34a4a;
    }

    .product-body {
      padding: 16px 16px 8px;
      display: flex;
      flex-direction: column;
      gap: 6px;
      flex: 1;
    }

    .product-body h5 {
      margin: 0;
      font-size: 16px;
      font-weight: 600;
      line-height: 1.3;
    }

    .product-category {
      font-size: 13px;
      text-transform: capitalize;
      color: var(--muted);
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 6px;
      margin-top: 4px;
    }

    .price {
      font-weight: 700;
      font-size: 18px;
      color: var(--primary);
    }

    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-weight: 400;
      font-size: 14px;
      margin-left: 4px;
    }

    .rating {
      color: #f7b731;
      font-size: 14px;
      display: flex;
      align-items: center;
      gap: 4px;
    }

    .rating span {
      color: var(--muted);
      font-size: 13px;
    }

    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }

    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px 12px;
      border-radius: 40px;
      cursor: pointer;
      font-weight: 600;
      font-size: 14px;
      transition: background 0.15s, transform 0.1s;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .add-btn:hover {
      background: #142f4a;
    }

    .add-btn:active {
      transform: scale(0.97);
    }

    .wish-btn {
      background: var(--surface);
      border: 0;
      width: 44px;
      border-radius: 40px;
      cursor: pointer;
      font-size: 16px;
      color: var(--muted);
      transition: background 0.15s, color 0.15s;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }

    .wish-btn:hover {
      background: #ffe8e8;
      color: #e34a4a;
    }

    /* deal */
    .deal {
      display: flex;
      gap: 0;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      align-items: stretch;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0, 20, 50, 0.03);
    }

    .deal img {
      width: 45%;
      height: 320px;
      object-fit: cover;
      display: block;
      background: #eef4fe;
    }

    .deal .content {
      padding: 36px 40px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal .content h3 {
      font-size: 28px;
      font-weight: 700;
      margin: 0 0 6px;
    }

    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0 12px;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 12px 14px;
      border-radius: 12px;
      min-width: 68px;
      text-align: center;
    }

    .time-box div:first-child {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.2;
    }

    .time-box div:last-child {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .deal .price {
      font-size: 28px;
    }

    .deal-discount {
      background: #e34a4a;
      color: white;
      padding: 4px 14px;
      border-radius: 30px;
      font-weight: 700;
      font-size: 14px;
    }

    /* testimonials */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 2px 16px;
    }

    .testimonial {
      min-width: 320px;
      background: var(--card);
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0, 20, 50, 0.02);
      flex: 1;
    }

    .testimonial .rating {
      margin-bottom: 8px;
    }

    .testimonial p {
      font-size: 15px;
      margin: 0 0 16px;
      color: var(--primary);
    }

    .testimonial .avatar {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      object-fit: cover;
      background: var(--surface);
    }

    /* newsletter */
    .newsletter {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
      background: linear-gradient(135deg, #0b1e33, #1a3755);
    }

    .newsletter h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 26px;
      font-weight: 600;
      margin: 0 0 4px;
    }

    .newsletter p {
      opacity: 0.8;
      margin-bottom: 20px;
    }

    .newsletter form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }

    .newsletter input {
      padding: 14px 20px;
      border-radius: 40px;
      border: 0;
      width: 320px;
      max-width: 100%;
      font-size: 15px;
      background: rgba(255, 255, 255, 0.08);
      color: white;
      border: 1px solid rgba(255, 255, 255, 0.1);
    }

    .newsletter input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }

    .newsletter input:focus {
      outline: none;
      background: rgba(255, 255, 255, 0.12);
      border-color: rgba(255, 255, 255, 0.2);
    }

    .newsletter .btn-primary {
      background: white;
      color: var(--primary);
      box-shadow: none;
    }

    .newsletter .btn-primary:hover {
      background: #f0f4fe;
    }

    /* footer */
    footer {
      margin-top: 20px;
      padding: 40px 0 24px;
      border-top: 1px solid rgba(0, 20, 50, 0.04);
      color: var(--muted);
      font-size: 14px;
    }

    footer .footer-col h4 {
      font-weight: 600;
      color: var(--primary);
      margin-bottom: 12px;
    }

    footer .footer-col p,
    footer .footer-col div {
      line-height: 2;
    }

    /* ---------- responsive ---------- */
    @media (max-width: 1200px) {
      .categories {
        grid-template-columns: repeat(3, 1fr);
      }
      .products {
        grid-template-columns: repeat(3, 1fr);
      }
    }

    @media (max-width: 992px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .search {
        min-width: 140px;
      }
      .hero h1 {
        font-size: 36px;
      }
      .deal img {
        width: 40%;
        height: 260px;
      }
    }

    @media (max-width: 768px) {
      .products {
        grid-template-columns: repeat(2, 1fr);
      }
      .categories {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal {
        flex-direction: column;
      }
      .deal img {
        width: 100%;
        height: 200px;
      }
      .deal .content {
        padding: 24px;
      }
      .timer {
        gap: 8px;
      }
      .time-box {
        min-width: 56px;
        padding: 10px 8px;
      }
      .time-box div:first-child {
        font-size: 20px;
      }
      .hero h1 {
        font-size: 30px;
      }
      .hero p {
        font-size: 16px;
      }
      .section {
        padding: 36px 0 24px;
      }
    }

    @media (max-width: 480px) {
      .products {
        grid-template-columns: 1fr;
      }
      .categories {
        grid-template-columns: 1fr 1fr;
      }
      .header-inner {
        flex-wrap: wrap;
        gap: 8px;
      }
      .header-inner .search {
        order: 3;
        flex: 1 1 100%;
        min-width: 0;
      }
      .brand {
        font-size: 18px;
      }
      .hero {
        min-height: 300px;
        padding: 40px 16px;
      }
      .hero h1 {
        font-size: 26px;
      }
      .testimonial {
        min-width: 260px;
      }
      .newsletter {
        padding: 32px 20px;
      }
      .newsletter input {
        width: 100%;
      }
    }
  </style>
</head>

<body>

  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          Nexus<span class="accent">Shop</span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size:10px;margin-left:4px;"></i></a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:10px;flex:1;justify-content:flex-end;">
        <div class="search" role="search">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
          <button class="icon-btn" id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
          <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn" title="Cart" aria-label="Cart">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none;">
      <div class="container">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Categories</a></li>
          <li><a href="#">Trending</a></li>
          <li><a href="#deals">Deals</a></li>
          <li><a href="#about">About</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- Hero -->
    <section class="hero" aria-label="Hero banner">
      <div class="container">
        <h1>New Collection — <br>Premium Picks</h1>
        <p>Discover the latest in fashion, tech & accessories. Limited deals & free shipping on selected items.</p>
        <div style="display:flex;gap:12px;justify-content:center;flex-wrap:wrap;">
          <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- Categories -->
    <section class="section container" aria-labelledby="cat-title">
      <div class="title" id="cat-title">
        <h2 class="section-title">Shop by Category</h2>
        <p class="muted">Browse curated collections</p>
      </div>
      <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
    </section>

    <!-- Products -->
    <section class="section container" aria-labelledby="prod-title">
      <div class="title" id="prod-title">
        <h2 class="section-title">Trending Products</h2>
        <p class="muted">Popular picks based on recent activity</p>
      </div>
      <div class="grid products" id="productsGrid" aria-live="polite"></div>
    </section>

    <!-- Deals -->
    <section id="deals" class="section container" aria-labelledby="deals-title">
      <div class="title" id="deals-title">
        <h2 class="section-title">Flash Sale</h2>
        <p class="muted">Limited-time offers — don't miss out</p>
      </div>

      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Thin, light, and powerful — next‑gen performance.</p>

          <div class="timer" aria-hidden="false">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>

          <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
            <div><span class="price">$999</span> <span class="old-price">$1,199</span></div>
            <span class="deal-discount">-17%</span>
          </div>

          <p style="margin:12px 0 4px;">Only <strong>12</strong> items left at this price!</p>
          <div style="margin-top:12px;">
            <button class="btn btn-primary" id="buyDeal">Buy Now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section container" aria-labelledby="test-title">
      <div class="title" id="test-title">
        <h2 class="section-title">What our customers say</h2>
        <p class="muted">Real reviews from verified buyers</p>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Fast shipping and excellent support. The product exceeded my expectations!"</p>
          <div style="display:flex;align-items:center;gap:12px;">
            <img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" loading="lazy">
            <div><strong>Ava Martin</strong><div class="muted" style="font-size:13px;">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and smooth checkout. Will definitely shop again."</p>
          <div style="display:flex;align-items:center;gap:12px;">
            <img class="avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" loading="lazy">
            <div><strong>Michael Lee</strong><div class="muted" style="font-size:13px;">Frequent buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section container" aria-labelledby="news-title">
      <div class="newsletter">
        <h3 id="news-title">Stay in the loop</h3>
        <p>Subscribe for exclusive offers &amp; new arrivals</p>
        <form id="newsletterForm" onsubmit="return false;">
          <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email" required>
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:14px;font-size:14px;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display:flex;flex-wrap:wrap;gap:32px;justify-content:space-between;">
      <div style="max-width:300px;">
        <div style="font-weight:700;font-size:20px;color:var(--primary);">NexusShop</div>
        <p class="muted" style="margin-top:8px;">Modern e‑commerce demo built with HTML, CSS &amp; JavaScript.</p>
        <div style="margin-top:16px;display:flex;gap:8px;">
          <a class="icon-btn" href="#" title="Facebook"><i class="fab fa-facebook"></i></a>
          <a class="icon-btn" href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
          <a class="icon-btn" href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div style="display:flex;gap:40px;flex-wrap:wrap;">
        <div class="footer-col"><h4>Company</h4><div>About<br>Careers<br>Press</div></div>
        <div class="footer-col"><h4>Support</h4><div>Help Center<br>Shipping &amp; Returns<br>Contact</div></div>
      </div>
    </div>
    <div style="text-align:center;margin-top:28px;color:var(--muted);font-size:13px;">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </footer>

  <script>
    // ---------- data ----------
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67,
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156,
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'gadgets' }
    ];

    // ---------- refs ----------
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    let cartCount = 0;

    // ---------- helpers ----------
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;',
        "'": '&#39;' } [s]));
    }

    function updateCartCount() { cartCountEl.textContent = cartCount; }

    function addToCart(productId) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();
      const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = 'Added ✓';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig;
          btn.disabled = false; }, 1200);
      }
    }

    // ---------- render ----------
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="muted">Explore</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML =
          `<div style="grid-column:1/-1;text-align:center;padding:40px 0;color:var(--muted);">No products found</div>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product';
        const badgeClass = p.badge && p.badge.startsWith('-') ? 'hot' : '';
        const badgeHtml = p.badge ?
          `<span class="product-badge ${badgeClass}">${escapeHtml(p.badge)}</span>` :
          '';
        el.innerHTML = `
          ${badgeHtml}
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          <div class="product-body">
            <h5>${escapeHtml(p.title)}</h5>
            <div class="product-category">${escapeHtml(p.category)}</div>
            <div class="price-row">
              <div>
                <span class="price">$${p.price.toLocaleString()}</span>
                ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
              </div>
              <div class="rating">${'★'.repeat(Math.round(p.rating))} <span>(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ---------- search ----------
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---------- mobile toggle ----------
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
    });

    // ---------- misc UI ----------
    document.getElementById('catMenuBtn').addEventListener('click', (e) => {
      e.preventDefault();
      document.getElementById('cat-title').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
      cartCount += 1;
      updateCartCount();
      alert('Deal added to cart (demo).');
    });

    // ---------- newsletter ----------
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email address.';
        msg.style.color = '#ffb3b3';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = 'Thanks! You are subscribed.';
      msg.style.color = '#cce7ff';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // ---------- deal timer ----------
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) { clearInterval(timer); return; }
        document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000)))
          .padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (60 * 1000)))
          .padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000)).padStart(2,
        '0');
      }
      tick();
      const timer = setInterval(tick, 1000);
    })();

    // ---------- init ----------
    (function init() {
      renderCategories();
      renderProducts(PRODUCTS);
      updateCartCount();
      document.getElementById('year').textContent = new Date().getFullYear();
    })();
  </script>
</body>

</html>
