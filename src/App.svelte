<script>
  import Home from "./lib/Home.svelte";
  import About from "./lib/About.svelte";

  let currentPage = "home";
  let isMenuOpen = false;

  function navigate(page) {
    currentPage = page;
    isMenuOpen = false; // Close menu when navigating
  }

  function toggleMenu() {
    isMenuOpen = !isMenuOpen;
  }
</script>

<div>
  <div class="top-row">
    <div class="contact-info">
      <span>
        <i class="fas fa-phone" style="margin-right: 8px;"></i>
        (810) 691-5777 | 106 W.Lovett Charlotte 48813 | 9001 Miller Rd Swartz Creek
        MI 48473
      </span>
      <a href="mailto:GreenTreeEssentialz@gmail.com">
        <span>
          <i class="fas fa-envelope" style="margin-right: 8px;"></i>
          GreenTreeEssentialz@gmail.com
        </span>
      </a>
    </div>
    <div class="top-nav">
      <ul>
        <li>
          <a
            href="#"
            on:click|preventDefault={() => navigate("home")}
            class:active={currentPage === "home"}>Home</a
          >
        </li>
        <li>
          <a
            href="#"
            on:click|preventDefault={() => navigate("about")}
            class:active={currentPage === "about"}>About us</a
          >
        </li>
        <li>
          <a href="http://greentreeessentialz.com/index.php/contact-us/"
            >Contact Us</a
          >
        </li>
      </ul>
    </div>
  </div>
</div>

<nav>
  <div class="nav-left">
    <picture>
      <source
        srcset="/imgs/greentree-logo.webp 1080w, /imgs/greentree-logo.webp 1024w, /imgs/greentree-logo.webp 768w, /imgs/greentree-logo.webp 510w, /imgs/greentree-logo.webp 300w"
        sizes="(max-width: 1080px) 100vw, 1080px"
        type="image/webp"
      />
      <img
        src="/imgs/greentree-logo.png"
        alt="Green Tree Essentialz Logo"
        class="logo"
        width="1080"
        height="360"
        srcset="/imgs/greentree-logo.png 1080w, /imgs/greentree-logo.png 768w, /imgs/greentree-logo.png 510w, /imgs/greentree-logo.png 300w"
        sizes="(max-width: 1080px) 100vw, 1080px"
        decoding="async"
        fetchpriority="high"
        data-recalc-dims="1"
      />
    </picture>
  </div>

  <div class="nav-center">
    <ul class="desktop-menu">
      <li>
        <a href="http://greentreeessentialz.com/index.php/spiritual-services/"
          >Spiritual Services</a
        >
      </li>
      <li>
        <a
          href="http://greentreeessentialz.com/index.php/natural-health-services/"
          >Natural Health Services</a
        >
      </li>
      <li>
        <a href="http://greentreeessentialz.com/index.php/events-classes/"
          >Events & Classes</a
        >
      </li>
    </ul>
  </div>

  <div class="nav-right">
    <button class="hamburger" on:click={toggleMenu}>
      <i class="fas fa-bars"></i>
    </button>
  </div>
</nav>

<!-- Mobile Menu Panel -->
<div
  class="mobile-menu-overlay"
  class:open={isMenuOpen}
  on:click={toggleMenu}
></div>
<div class="mobile-menu-panel" class:open={isMenuOpen}>
  <div class="mobile-menu-header">
    <button class="close-menu" on:click={toggleMenu}>
      <i class="fas fa-times"></i>
    </button>
  </div>
  <div class="mobile-menu-content">
    <div class="mobile-menu-section">
      <ul>
        <li>
          <a
            href="#"
            on:click|preventDefault={() => {
              navigate("home");
              toggleMenu();
            }}>Home</a
          >
        </li>
        <li>
          <a
            href="#"
            on:click|preventDefault={() => {
              navigate("about");
              toggleMenu();
            }}>About us</a
          >
        </li>
        <li>
          <a
            href="http://greentreeessentialz.com/index.php/contact-us/"
            on:click={() => toggleMenu()}>Contact Us</a
          >
        </li>
      </ul>
    </div>
    <div class="mobile-menu-section">
      <h4>Services</h4>
      <ul>
        <li>
          <a href="http://greentreeessentialz.com/index.php/spiritual-services/"
            >Spiritual Services</a
          >
        </li>
        <li>
          <a
            href="http://greentreeessentialz.com/index.php/natural-health-services/"
            >Natural Health Services</a
          >
        </li>
        <li>
          <a href="http://greentreeessentialz.com/index.php/events-classes/"
            >Events & Classes</a
          >
        </li>
      </ul>
    </div>
    <div class="mobile-menu-section">
      <h4>Contact Information</h4>
      <div class="mobile-contact">
        <p><i class="fas fa-phone"></i> (810) 691-5777</p>
        <p>
          <i class="fas fa-map-marker-alt"></i> 106 W.Lovett Charlotte 48813
        </p>
        <p>
          <i class="fas fa-map-marker-alt"></i> 9001 Miller Rd Swartz Creek MI 48473
        </p>
        <p>
          <i class="fas fa-envelope"></i>
          <a href="mailto:GreenTreeEssentialz@gmail.com"
            >GreenTreeEssentialz@gmail.com</a
          >
        </p>
      </div>
    </div>
  </div>
</div>

<main>
  {#if currentPage === "home"}
    <Home />
  {:else if currentPage === "about"}
    <About />
  {/if}
</main>

<style>
  .top-row {
    background: #5d4e37;
    color: #f7f4f0;
    font-size: 12px;
    height: 32px;
    padding: 0 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: 600;
  }

  .contact-info {
    display: flex;
    align-items: center;
    gap: 20px;
  }

  .top-row a {
    color: #f7f4f0;
    text-decoration: none;
    font-weight: 600;
  }

  .top-row a:hover {
    text-decoration: underline;
  }

  .top-nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    gap: 20px;
  }

  .top-nav li {
    margin: 0;
  }

  .top-nav a {
    color: #f7f4f0;
    text-decoration: none;
    font-weight: 600;
  }

  .top-nav a:hover {
    text-decoration: underline;
  }

  .top-nav a.active {
    text-decoration: underline;
    font-weight: bold;
  }

  nav {
    padding: 1rem 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #e9efc7;
  }

  .nav-left {
    display: flex;
    align-items: center;
  }

  .nav-center {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    flex: 1;
  }

  .nav-right {
    display: flex;
    gap: 1rem;
    align-items: center;
  }

  .desktop-menu {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    gap: 20px;
  }

  .desktop-menu a {
    color: #2e5016;
    text-decoration: none;
    font-size: 20px;
    font-weight: 600;
  }

  .desktop-menu a:hover {
    text-decoration: underline;
  }

  .logo {
    height: 120px;
    width: auto;
    object-fit: contain;
  }

  .hamburger {
    display: none;
    background: none;
    border: none;
    font-size: 24px;
    cursor: pointer;
    color: #5d4e37;
  }

  button {
    padding: 0.5rem 1rem;
    border: none;
    background: white;
    cursor: pointer;
    border-radius: 4px;
    transition: all 0.2s ease;
  }

  button.active {
    background: #4caf50;
    color: white;
  }

  /* Mobile Menu Styles */
  .mobile-menu-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    z-index: 998;
    opacity: 0;
    visibility: hidden;
    transition: all 0.3s ease;
  }

  .mobile-menu-overlay.open {
    opacity: 1;
    visibility: visible;
  }

  .mobile-menu-panel {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100vh;
    background: #5d4e37;
    z-index: 999;
    transform: translateY(-100%);
    transition: transform 0.3s ease;
    overflow-y: auto;
  }

  .mobile-menu-panel.open {
    transform: translateY(0);
  }

  .mobile-menu-header {
    display: flex;
    justify-content: flex-end;
    align-items: flex-start;
    padding: 1rem;
    border-bottom: 1px solid #f7f4f0;
    color: #f7f4f0;
  }

  .close-menu {
    background: none;
    border: none;
    color: #f7f4f0;
    font-size: 1.5rem;
    cursor: pointer;
    padding: 0.5rem;
    margin-top: 0;
  }

  .mobile-menu-content {
    padding: 1rem;
    text-align: left;
  }

  .mobile-menu-section {
    margin-bottom: 2rem;
    text-align: left;
  }

  .mobile-menu-section h4 {
    color: #f7f4f0;
    margin-bottom: 1rem;
    font-size: 1.2rem;
    border-bottom: 1px solid #f7f4f0;
    padding-bottom: 0.5rem;
    text-align: left;
  }

  .mobile-menu-section ul {
    list-style: none;
    margin: 0;
    padding: 0;
    text-align: left;
  }

  .mobile-menu-section li {
    margin-bottom: 0.5rem;
    text-align: left;
  }

  .mobile-menu-section a {
    color: #f7f4f0;
    text-decoration: none;
    font-size: 1rem;
    font-weight: 500;
    display: block;
    padding: 0.5rem 0;
    transition: color 0.2s ease;
    text-align: left;
  }

  .mobile-menu-section a:hover {
    color: #ddd;
  }

  .mobile-contact p {
    color: #f7f4f0;
    margin-bottom: 0.5rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    text-align: left;
  }

  .mobile-contact a {
    color: #f7f4f0;
    text-decoration: none;
  }

  .mobile-contact a:hover {
    text-decoration: underline;
  }

  @media (max-width: 1024px) {
    .desktop-menu {
      display: none;
    }

    .logo {
      height: 70px;
    }

    .hamburger {
      display: block;
    }

    .top-row {
      height: auto;
      min-height: 32px;
      padding: 4px 1rem;
      flex-direction: column;
      gap: 4px;
      text-align: center;
    }

    .contact-info {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 2px;
    }

    .contact-info span {
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .top-nav {
      display: none;
    }

    nav {
      padding: 1rem;
    }
  }
</style>
