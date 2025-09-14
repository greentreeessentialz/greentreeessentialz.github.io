<script>
  import { onMount } from "svelte";

  let crewSection;
  let hasAnimated = false;

  onMount(() => {
    const checkScroll = () => {
      if (hasAnimated) return;

      const rect = crewSection.getBoundingClientRect();
      const windowHeight = window.innerHeight;

      // Trigger when section is 20% visible
      if (rect.top < windowHeight * 0.8 && rect.bottom > 0) {
        hasAnimated = true;
        crewSection.classList.add("animate");
        // Remove scroll listener after animation triggers
        window.removeEventListener("scroll", checkScroll);
      }
    };

    // Check on initial load
    checkScroll();

    // Add scroll listener
    window.addEventListener("scroll", checkScroll);

    // Cleanup
    return () => {
      window.removeEventListener("scroll", checkScroll);
    };
  });
</script>

<section class="about-crew-section" bind:this={crewSection}>
  <div class="about-crew-container">
    <h3>The Heart of the GreenTree Essentialz</h3>

    <div class="crew-grid">
      <div class="crew-card" data-delay="0">
        <div class="crew-image">
          <img src="/imgs/about1.jpg" alt="crew member" />
        </div>
        <div class="crew-content">
          <h4>Tracey</h4>
          <p>
            Tracey Schwalbach ND. (Business Owner of Green Tree Essentialz)
            works with her Angels to channel a genuine connection and complete
            honesty that will give you beautiful messages and guide you to
            spiritual harmony. She uses Oracle Cards, Crystals, Astrology and
            much more to heal your spiritual being. Tracey is also a certified
            Naturopath, Reiki Master, Deeksha, Bars Facilitator, and Ordained
            Minister.
          </p>
        </div>
        <div class="crew-footer">
          <a
            href="https://www.vagaro.com/greentreeessentialzswartzcreek?fbclid=IwAR3TiZEaJXuBzGoxwXdeqDIE48wF3VjwEzF9Ee3njDIQlkXRqTNH-Gf_4j8&ig_fbb=true"
            target="_blank"
            class="learn-more-link">Swartz Creek Office</a
          >
        </div>
      </div>

      <div class="crew-card" data-delay="0.2">
        <div class="crew-image">
          <img src="/imgs/about2.jpg" alt="crew member" />
        </div>
        <div class="crew-content">
          <h4>Barta</h4>
          <p>
            Meet Barta… She is a peaceful, balanced soul. She uses cards and
            guides to deliver gentle, loving messages. She is on point and you
            will love her energy! With a compassionate presence and deep
            spiritual wisdom, Barta creates a safe and nurturing space for those
            seeking guidance, offering clarity and heartfelt insight to help
            navigate life's journey.
          </p>
        </div>
        <div class="crew-footer">
          <a
            href="https://www.vagaro.com/greentreeessentialz?fbclid=IwAR0D0P_ZmdJIuku1SZLErpoH0Kort3YI5Vml4Jp3BkcBz5ZCtudBr0RGmaA&ig_fbb=true"
            target="_blank"
            class="learn-more-link">Charlotte Office</a
          >
        </div>
      </div>

      <div class="crew-card" data-delay="0.4">
        <div class="crew-image">
          <img src="/imgs/about3.jpg" alt="crew member" />
        </div>
        <div class="crew-content">
          <h4>Dan</h4>
          <p>
            As a coding wizard with a mystical touch, Dan weaves technology and
            intuition together, crafting digital experiences that resonate with
            the spiritual and unknown. With a deep understanding of the unseen
            forces that shape our world, he brings a unique blend of technical
            expertise and esoteric insight to every project, conjuring
            innovative solutions that transcend the ordinary
          </p>
        </div>
        <div class="crew-footer">
          <a
            href="https://lightofdavinci.github.io"
            target="_blank"
            class="learn-more-link">See My Work</a
          >
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .about-crew-section {
    background-color: #53570e;
    padding: 4rem 0;
    position: relative;
    overflow: hidden;
  }

  .about-crew-container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 2rem;
    text-align: center;
  }

  h3 {
    font-family: "DM Serif Display";
    text-align: center;
    font-size: 52px;
    font-weight: 400;
    line-height: normal;
    padding-bottom: 2rem;
    color: #fff5b6;
    margin: 0;
  }

  .crew-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
    margin-top: 2rem;
  }

  .crew-card {
    background-color: #fff;
    border-radius: 20px;
    box-shadow:
      0 10px 40px rgba(0, 0, 0, 0.12),
      0 4px 20px rgba(0, 0, 0, 0.08),
      0 2px 8px rgba(0, 0, 0, 0.06);
    overflow: hidden;
    transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    opacity: 0;
    transform: translateY(30px);
    position: relative;
    display: flex;
    flex-direction: column;
  }

  .crew-card::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(
      135deg,
      rgba(255, 245, 182, 0.05) 0%,
      rgba(83, 87, 14, 0.05) 100%
    );
    opacity: 0;
    transition: opacity 0.3s ease;
    border-radius: 20px;
    z-index: 1;
    pointer-events: none;
  }

  .crew-card:hover {
    transform: translateY(-8px) scale(1.02);
    box-shadow:
      0 20px 60px rgba(0, 0, 0, 0.18),
      0 8px 30px rgba(0, 0, 0, 0.12),
      0 4px 15px rgba(0, 0, 0, 0.08);
  }

  .crew-card:hover::before {
    opacity: 1;
  }

  /* Animation triggers when section gets animate class */
  :global(.about-crew-section.animate) .crew-card {
    transform: translateY(0);
    opacity: 1;
  }

  /* Staggered animation delays for each card */
  :global(.about-crew-section.animate) .crew-card[data-delay="0"] {
    transition-delay: 0s;
  }

  :global(.about-crew-section.animate) .crew-card[data-delay="0.2"] {
    transition-delay: 0.3s;
  }

  :global(.about-crew-section.animate) .crew-card[data-delay="0.4"] {
    transition-delay: 0.6s;
  }

  .crew-image {
    width: 100%;
    height: 550px;
    overflow: hidden;
  }

  .crew-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
  }

  .crew-card:hover .crew-image img {
    transform: scale(1.05);
  }

  .crew-content {
    padding: 1.5rem;
    text-align: left;
    flex: 1;
  }

  .crew-content h4 {
    font-family: "DM Serif Display";
    font-size: 1.75rem;
    font-weight: 600;
    color: #53570e;
    margin: 0 0 1rem 0;
    text-align: center;
    letter-spacing: 1px;
  }

  .crew-content p {
    color: #5d4e37;
    font-size: 1rem;
    line-height: 1.6;
    margin: 0;
    text-align: center;
  }

  .crew-footer {
    background-color: #fff5b6;
    height: 30px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 0 0 20px 20px;
    margin-top: auto;
    position: relative;
    z-index: 2;
  }

  .learn-more-link {
    color: #53570e;
    text-decoration: none;
    font-size: 0.9rem;
    font-weight: 500;
    transition: color 0.3s ease;
    cursor: pointer;
  }

  .learn-more-link:hover {
    color: #2e5016;
  }

  /* Responsive Design */
  @media (max-width: 1200px) {
    .crew-grid {
      grid-template-columns: repeat(2, 1fr);
      gap: 1.5rem;
    }
  }

  @media (max-width: 768px) {
    .about-crew-section {
      padding: 3rem 0;
    }

    .about-crew-container {
      padding: 0 1.5rem;
    }

    h3 {
      font-size: 2.5rem;
      padding-bottom: 2rem;
    }

    .crew-grid {
      grid-template-columns: 1fr;
      gap: 1.5rem;
      margin-top: 1.5rem;
    }

    .crew-card {
      max-width: 400px;
      margin: 0 auto;
    }

    .crew-image {
      height: 400px;
    }

    .crew-content {
      padding: 1.25rem;
    }

    .crew-content h4 {
      font-size: 1.5rem;
    }

    .crew-content p {
      font-size: 0.9rem;
    }
  }

  @media (max-width: 480px) {
    .about-crew-section {
      padding: 2rem 0;
    }

    .about-crew-container {
      padding: 0 1rem;
    }

    h3 {
      font-size: 2rem;
      padding-bottom: 1.5rem;
    }

    .crew-grid {
      gap: 1rem;
      margin-top: 1rem;
    }

    .crew-card {
      max-width: 100%;
    }

    .crew-content {
      padding: 1rem;
    }

    .crew-content h4 {
      font-size: 1.1rem;
    }

    .crew-content p {
      font-size: 0.85rem;
    }
  }
</style>
