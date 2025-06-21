<script>
  import Home from "./lib/Home.svelte";
  import About from "./lib/About.svelte";

  let currentPage = "home";

  function navigate(page) {
    currentPage = page;
  }
</script>

<nav>
  <button
    on:click={() => navigate("home")}
    class:active={currentPage === "home"}
  >
    Home222
  </button>
  <button
    on:click={() => navigate("about")}
    class:active={currentPage === "about"}
  >
    About
  </button>
</nav>

<main>
  {#if currentPage === "home"}
    <Home />
  {:else if currentPage === "about"}
    <About />
  {/if}
</main>

<style>
  nav {
    padding: 1rem;
    background: #f0f0f0;
    margin-bottom: 2rem;
  }

  button {
    margin-right: 1rem;
    padding: 0.5rem 1rem;
    border: none;
    background: white;
    cursor: pointer;
    border-radius: 4px;
  }

  button.active {
    background: #4caf50;
    color: white;
  }

  main {
    padding: 0 1rem;
  }
</style>
