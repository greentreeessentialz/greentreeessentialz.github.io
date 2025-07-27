<script>
  import { onMount } from "svelte";
  import LandingNaturalSection from "../components/LandingNaturalSection.svelte";

  let titleVisible = false;

  onMount(() => {
    // Trigger title animation after a short delay
    setTimeout(() => {
      titleVisible = true;
    }, 300);
  });
</script>

<!-- Hero Section with Parallax Background -->
<section class="hero-section">
  <div class="parallax-background"></div>

  <!-- Header Content -->
  <div class="header-content">
    <h1 class="hero-title" class:visible={titleVisible}>
      Rejuvenate from the outside in!
    </h1>
  </div>
</section>

<section class="landing-about-section">
  <!-- Hint Block - positioned with negative margin to overlap with hero section -->
  <div class="hint-block">
    <div class="hint-content">
      <div class="hint-left">
        <h2>Full Service Natural Healing Center</h2>
        <p>
          At Green Tree Essentialz we are a full service Natural Healing Center
          with full protocols and plenty of support to help you meet your goals.
        </p>
        <p>
          Our store currently offers: New Age and Metaphysical Items, Essential
          Oils, incense, candles, burners, Stones and crystals, books,
          pendulums, Tarot and Oracle Cards, etc!
        </p>
        <a href="/about" class="hint-about-us-link">
          Behind the Healing <i class="fas fa-arrow-right"></i>
        </a>
      </div>
      <div class="hint-right">
        <img
          src="/imgs/hint-banner.jpg"
          alt="Wellness Services"
          class="hint-image"
        />
      </div>
    </div>
  </div>
</section>

<LandingNaturalSection />

<section class="landing-spiritual-services-section">
  <h3>Spiritual Services</h3>
</section>

<style>
  /* Hero Section Styles */
  .hero-section {
    position: relative;
    height: 100vh; /* Full viewport height */
    overflow: hidden;
    margin-top: -179px; /* Negative margin to pull up behind nav */
  }

  .parallax-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100vw; /* Full viewport width */
    height: 100vh; /* Full viewport height */
    background-image: url("/imgs/landing-intro-banner.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Creates parallax effect */
    z-index: 1;
  }

  .header-content {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 2;
    display: flex;
    align-items: flex-start;
    padding-top: 250px; /* 250px below nav */
  }

  .hero-title {
    font-family: "DM Serif Display";
    font-size: clamp(
      2rem,
      6vw,
      6.5rem
    ); /* Reduced from 8vw to 6vw for better fit */
    font-weight: 400;
    margin: 0 auto;
    line-height: 1.1;
    white-space: nowrap; /* Prevent line breaks */
    opacity: 0;
    transform: translateY(50px);
    transition: all 1s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    color: #fff5b6;
    text-align: center;
    width: 100%;
    max-width: calc(100% - 5rem); /* Match nav margins (2.5rem on each side) */
    overflow: visible; /* Ensure text is not clipped */
  }

  .hero-title.visible {
    opacity: 1;
    transform: translateY(0);
  }

  /* Responsive adjustments for hero */
  @media (max-width: 1130px) {
    .header-content {
      padding-top: 200px; /* Reduced padding for tablet sizes */
    }
  }

  @media (max-width: 767px) {
    .hero-section {
      height: 100vh; /* Keep full viewport height on mobile */
      margin-top: -150px; /* Slightly less negative margin on mobile */
    }

    .parallax-background {
      background-attachment: scroll; /* Disable parallax on mobile for better performance */
      width: 100vw;
      height: 100vh;
    }

    .hero-title {
      max-width: calc(100% - 2rem); /* Smaller margins on mobile */
      font-size: clamp(1.5rem, 4vw, 3.5rem); /* Reduced scaling for mobile */
    }
  }

  @media (max-width: 600px) {
    .header-content {
      padding-top: 175px; /* Further reduced padding for phones */
    }

    .hero-title {
      max-width: calc(100% - 1rem); /* Even smaller margins on small mobile */
      font-size: 2rem; /* Fixed font size for mobile */
      white-space: normal; /* Allow text to wrap */
      line-height: 1.2; /* Better line height for wrapped text */
    }
  }

  .hint-block {
    position: relative;
    margin-top: -100px; /* Negative margin to overlap with hero section */
    z-index: 10;
    display: flex;
    justify-content: center;
  }

  .hint-content {
    background-color: white;
    border-radius: 1.5rem;
    padding: 1rem;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(0, 0, 0, 0.05);
    max-width: 1024px;
    width: calc(100% - 5rem); /* Match nav margins */
    display: flex;
    gap: 2rem;
    align-items: center;
  }
  .hint-content h2 {
    font-size: 1.75rem;
    font-family: "DM Serif Display";
    color: #53570e;
    letter-spacing: 1px;
    margin-bottom: 1rem;
  }
  .hint-left {
    flex: 1;
    text-align: left;
  }

  .hint-left p {
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 400;
    margin-bottom: 1rem;
    line-height: 1.6;
  }
  .hint-about-us-link {
    background-color: #53570e;
    color: #fff5b6;
    font-size: 1.1rem;
    font-weight: 600;
    width: 100%;
    height: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 0.5rem;
    text-decoration: none;
    transition: all 0.3s ease;
    gap: 0.5rem; /* Space between text and arrow */
  }

  .hint-about-us-link:hover {
    background-color: #6b7112;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(83, 87, 14, 0.3);
  }

  .hint-about-us-link i {
    font-size: 0.9rem;
    transition: transform 0.3s ease;
  }

  .hint-about-us-link:hover i {
    transform: translateX(3px);
  }

  .hint-right {
    flex-shrink: 0;
  }

  .hint-image {
    width: 100%;
    max-width: 470px;
    height: auto;
    border-radius: 0.75rem; /* 12px converted to rem */
    object-fit: cover;
  }

  @media (max-width: 1130px) {
    .hint-content h2 {
      font-size: 1.25rem;
      letter-spacing: 0.5px;
    }
    .hint-left p {
      font-size: 1rem;
    }
  }

  @keyframes bounce {
    0%,
    20%,
    50%,
    80%,
    100% {
      transform: translateY(0);
    }
    40% {
      transform: translateY(-10px);
    }
    60% {
      transform: translateY(-5px);
    }
  }

  /* Responsive adjustments */
  @media (max-width: 768px) {
    .hint-block {
      margin-top: -80px;
    }

    .hint-content {
      width: calc(100% - 2rem);
      padding: 1.5rem;
      flex-direction: column;
      gap: 1.5rem;
    }

    .hint-left p {
      font-size: 1rem;
    }

    .hint-image {
      max-width: 100%;
    }
  }

  @media (max-width: 480px) {
    .hint-block {
      margin-top: -60px;
    }

    .hint-content {
      width: calc(100% - 1rem);
      padding: 1rem;
      gap: 1rem;
    }

    .hint-left p {
      font-size: 0.9rem;
    }
  }

  h1 {
    font-family: "DM Serif Display";
    text-align: center;
    font-size: 52px;
    font-weight: 400;
    color: #fff5b6;
  }
  .landing-about-section {
    background-color: #fff5b6;
    padding-bottom: 3rem;
  }
  .landing-natural-health-services-section {
    width: 100%;
    height: 700px;
    border-top: 5px dashed black;
    background-color: #fff5b6;
  }
  .landing-natural-health-services-section h3 {
    font-family: "DM Serif Display";
    text-align: center;
    font-size: 52px;
    font-weight: 400;
    line-height: normal;
    color: #53570e;
  }
  .landing-spiritual-services-section {
    width: 100%;
    height: 700px;
    border-top: 5px dashed black;
    background-color: #53570e;
  }
  .landing-spiritual-services-section h3 {
    font-family: "DM Serif Display";
    text-align: center;
    font-size: 52px;
    font-weight: 400;
    line-height: normal;
    color: #fff5b6;
  }
</style>
