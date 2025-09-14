<script>
  import Home from "./lib/Home.svelte";
  import About from "./lib/About.svelte";
  import LandingNav from "./lib/components/LandingNav.svelte";
  import { onMount } from "svelte";

  let currentPage = "home";
  let isMenuOpen = false;

  // Initialize page from URL on load
  onMount(() => {
    const path = window.location.pathname;
    if (path === "/about") {
      currentPage = "about";
    } else {
      currentPage = "home";
    }
  });

  function navigate(page) {
    currentPage = page;
    isMenuOpen = false; // Close menu when navigating

    // Update URL
    if (page === "about") {
      window.history.pushState({ page }, "", "/about");
    } else {
      window.history.pushState({ page }, "", "/");
    }
  }

  function toggleMenu() {
    isMenuOpen = !isMenuOpen;
  }

  // Handle service clicks - navigate to landing page sections
  function handleServiceClick(event) {
    event.preventDefault();
    const href = event.currentTarget.getAttribute("href");
    const sectionId = href.substring(1); // Remove the # symbol

    // Navigate to landing page with section anchor
    window.location.href = `/#${sectionId}`;
  }

  // Handle browser back/forward buttons
  function handlePopState(event) {
    if (event.state && event.state.page) {
      currentPage = event.state.page;
    } else {
      // Handle direct URL access
      const path = window.location.pathname;
      if (path === "/about") {
        currentPage = "about";
      } else {
        currentPage = "home";
      }
    }
  }

  // Add event listener for browser navigation
  onMount(() => {
    window.addEventListener("popstate", handlePopState);
    return () => {
      window.removeEventListener("popstate", handlePopState);
    };
  });
</script>

<div class="global-app-container">
  <!-- Navigation positioned on top with high z-index -->
  <div class="nav-wrapper">
    <LandingNav
      {currentPage}
      {isMenuOpen}
      {navigate}
      {toggleMenu}
      handleServiceClick={currentPage !== "home" ? handleServiceClick : null}
    />
  </div>

  <main>
    {#if currentPage === "home"}
      <Home />
    {:else if currentPage === "about"}
      <About />
    {/if}
  </main>
</div>

<style>
  .global-app-container {
    width: 100%;
    max-width: 2000px;
    margin: 0 auto;
  }

  .nav-wrapper {
    position: relative;
    z-index: 1000; /* High z-index to stay on top */
  }
</style>
