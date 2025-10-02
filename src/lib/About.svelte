<script>
  import AboutCrewSection from "./components/AboutCrewSection.svelte";
  import LandingPricingInfoSection from "./components/LandingPricingInfoSection.svelte";
  import LandingFooter from "./components/LandingFooter.svelte";

  import { onMount } from "svelte";

  let titleVisible = false;
  let isTablet = false;
  let parallaxOffset = 0;
  let parallaxElement;

  onMount(() => {
    // Detect if device is a tablet (iPad, Android tablet, etc.)
    const detectTablet = () => {
      const userAgent = navigator.userAgent.toLowerCase();
      const isIPad =
        /ipad/.test(userAgent) ||
        (navigator.platform === "MacIntel" && navigator.maxTouchPoints > 1);
      const isAndroidTablet =
        /android/.test(userAgent) && !/mobile/.test(userAgent);
      const isTabletSize =
        window.innerWidth >= 768 && window.innerWidth <= 1024;
      const isIOS =
        /iphone|ipad|ipod/.test(userAgent) ||
        (navigator.platform === "MacIntel" && navigator.maxTouchPoints > 1);

      // For iOS devices, always use the transform-based parallax
      // For other tablets, use size-based detection
      return isIPad || isAndroidTablet || isTabletSize || isIOS;
    };

    isTablet = detectTablet();

    // Trigger title animation after a short delay
    setTimeout(() => {
      titleVisible = true;
    }, 300);

    // Add scroll listener for tablet parallax effect
    if (isTablet) {
      let ticking = false;

      const handleScroll = () => {
        if (!ticking) {
          requestAnimationFrame(() => {
            const scrolled = window.pageYOffset;
            const parallaxSpeed = 0.5; // Adjust this value to control parallax speed
            parallaxOffset = scrolled * parallaxSpeed;
            ticking = false;
          });
          ticking = true;
        }
      };

      window.addEventListener("scroll", handleScroll, { passive: true });

      // Cleanup listeners on component destroy
      return () => {
        window.removeEventListener("scroll", handleScroll);
      };
    }
  });
</script>

<!-- Hero Section with Parallax Background -->
<section class="hero-section">
  <div
    class="parallax-about-background"
    class:tablet-parallax={isTablet}
    bind:this={parallaxElement}
    style:transform={isTablet ? `translateY(${parallaxOffset}px)` : ""}
  ></div>

  <!-- Header Content -->
  <div class="header-content">
    <h1 class="hero-title" class:visible={titleVisible}>
      Health and Wellness Services
    </h1>
  </div>
</section>

<section class="landing-about-section">
  <!-- Hint Block - positioned with negative margin to overlap with hero section -->
  <div class="hint-block">
    <div class="hint-content">
      <div class="hint-image">
        <img src="/imgs/wolf.jpg" alt="white wolf" />
      </div>
      <div class="hint-text-content">
        <div class="hint-paragraphs">
          <p>
            Green Tree Essentialz is a New Age metaphysical Business with Store
            fronts in 2 locations. Flushing, Mi and Charlotte, MI. 3 Natural
            Health Clinics. Bad Axe, Flushing, Saginaw and Charlotte, Mi.
          </p>
          <p>
            You can schedule Natural Health Consultations, Psychic readings,
            events, and Energy Body Healing Sessions, classes and more! Tracey
            is an Angel Oracle Reader, Psychic Medium, Certified Deeksha, Reiki
            Master and Ordained Minister.
          </p>
          <p>
            We have a number of readers who specialize in many mediums of
            Psychic divinations. Also Many Healers who use several different
            modalities. Green Tree Essentialz Currently offers : New Age and
            Metaphysical Items, Essential Oils, incense, candles, burners,
            Stones and crystals, books, pendulums, Tarot and Oracle Cards, etc!
          </p>
          <p>
            Join us For Fairs, Classes, Workshops, Meditations and Drumming!
            Stay tuned for new classes and new items coming in weekly!!
          </p>
        </div>
        <a href="/" class="hint-about-us-link">
          Back to Home <i class="fas fa-arrow-right"></i>
        </a>
      </div>
    </div>
  </div>
</section>

<AboutCrewSection />

<LandingPricingInfoSection />

<LandingFooter />

<style>
  /* Hero Section Styles */
  .hero-section {
    position: relative;
    height: 100vh; /* Full viewport height */
    overflow: hidden;
    margin-top: -179px; /* Negative margin to pull up behind nav */
  }

  .parallax-about-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100vw; /* Full viewport width */
    height: 100vh; /* Full viewport height */
    background-image: url("/imgs/about-banner.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Creates parallax effect */
    z-index: 1;
  }

  /* Tablet-specific parallax styles */
  .parallax-about-background.tablet-parallax {
    background-attachment: scroll; /* Use scroll instead of fixed for tablets */
    will-change: transform; /* Optimize for transform animations */
    transform: translateZ(0); /* Force hardware acceleration */
    backface-visibility: hidden; /* Improve rendering performance */
  }

  /* Additional tablet optimizations */
  @media (max-width: 1024px) and (min-width: 768px) {
    .parallax-about-background {
      background-attachment: scroll; /* Fallback for all tablets */
    }
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
    text-shadow: 2px 2px #000;
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

    .parallax-about-background {
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
      text-shadow: 1px 1px #000; /* Add text shadow for mobile phones */
    }
  }

  .hint-block {
    position: relative;
    margin-top: -100px; /* Negative margin to overlap with hero section */
    z-index: 10;
    display: flex;
    justify-content: center;
    padding: 0 1rem;
  }

  .hint-content {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
    width: 1000px;
    max-width: calc(100% - 5rem);
    display: flex;
    margin: 0;
    position: relative;
    z-index: 100;
    overflow: hidden;
  }

  .hint-image {
    flex-shrink: 0;
  }

  .hint-image img {
    height: 600px;
    width: auto;
    object-fit: cover;
  }

  .hint-text-content {
    flex: 1;
    padding: 1.5rem;
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .hint-paragraphs {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  .hint-paragraphs p {
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 400;
    margin: 0;
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

  /* Responsive Design */
  @media (max-width: 1130px) {
    .hint-block {
      margin-top: -80px;
    }

    .hint-content {
      width: 900px;
      max-width: calc(100% - 3rem);
    }

    .hint-text-content h2 {
      font-size: 1.25rem;
      letter-spacing: 0.5px;
    }

    .hint-paragraphs p {
      font-size: 0.95rem;
    }
  }

  @media (max-width: 1023px) {
    .hint-block {
      margin-top: -70px;
    }

    .hint-content {
      flex-direction: column;
      width: 800px;
      max-width: calc(100% - 2rem);
    }

    .hint-image img {
      height: auto;
      width: 100%;
      max-height: 500px;
      border-radius: 10px 10px 0 0;
      object-position: 0 -100px;
    }

    .hint-text-content {
      padding: 1.5rem;
      gap: 1.2rem;
    }
  }

  @media (max-width: 768px) {
    .hint-block {
      margin-top: -60px;
      padding: 1.5rem 1rem;
    }

    .hint-content {
      width: 100%;
      max-width: none;
    }

    /* .hint-image img {
      max-height: 350px;
      object-position: top;
    } */

    .hint-text-content {
      padding: 1.5rem;
      gap: 1.2rem;
    }

    .hint-text-content h2 {
      font-size: 1.5rem;
      text-align: center;
    }

    .hint-paragraphs p {
      font-size: 1rem;
      text-align: center;
    }
  }

  @media (max-width: 480px) {
    .hint-block {
      margin-top: -50px;
      padding: 1rem 0.5rem;
    }

    .hint-content {
      width: 100%;
    }

    .hint-image img {
      max-height: 410px;
      object-position: top;
    }

    .hint-text-content {
      padding: 1rem;
      gap: 1rem;
    }

    .hint-text-content h2 {
      font-size: 1.25rem;
    }

    .hint-paragraphs p {
      font-size: 0.9rem;
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
</style>
