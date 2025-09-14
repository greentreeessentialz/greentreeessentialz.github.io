<script>
  import { onMount } from "svelte";

  let pricingSection;
  let hasAnimated = false;

  onMount(() => {
    const checkScroll = () => {
      if (hasAnimated) return;

      const rect = pricingSection.getBoundingClientRect();
      const windowHeight = window.innerHeight;

      // Trigger when section is 20% visible
      if (rect.top < windowHeight * 0.8 && rect.bottom > 0) {
        hasAnimated = true;
        pricingSection.classList.add("animate");
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

<section
  id="pricing-info-section"
  class="pricing-section"
  bind:this={pricingSection}
>
  <div class="pricing-container">
    <h3>Service Menu</h3>

    <div class="pricing-grid">
      <div class="pricing-card" data-delay="0">
        <div class="service-name">Natural Health Phone Consultation</div>
        <div class="price">$75/hr</div>
      </div>
      <div class="pricing-card" data-delay="0.1">
        <div class="service-name">Intuitive Guidance</div>
        <div class="price">$100/hr</div>
      </div>
      <div class="pricing-card" data-delay="0.2">
        <div class="service-name">Swedish Massage</div>
        <div class="price">$85/hr</div>
      </div>
      <div class="pricing-card" data-delay="0.3">
        <div class="service-name">Energy Therapy</div>
        <div class="price">$75</div>
      </div>
      <div class="pricing-card" data-delay="0.4">
        <div class="service-name">Reflexology</div>
        <div class="price">$85/hr</div>
      </div>
      <div class="pricing-card" data-delay="0.5">
        <div class="service-name">Swedish Raindrop</div>
        <div class="price">$100/hr</div>
      </div>
      <div class="pricing-card" data-delay="0.6">
        <div class="service-name">Raindrop Therapy</div>
        <div class="price">$85/hr</div>
      </div>
      <div class="pricing-card" data-delay="0.7">
        <div class="service-name">Native American Reiki</div>
        <div class="price">$85</div>
      </div>
      <div class="pricing-card" data-delay="0.8">
        <div class="service-name">Crystal Angel Reiki</div>
        <div class="price">$85</div>
      </div>
      <div class="pricing-card" data-delay="0.9">
        <div class="service-name">Clean, Balance and Boost (BARS)</div>
        <div class="price">$85/hr</div>
      </div>
      <div class="pricing-card" data-delay="1">
        <div class="service-name">Psychic Tuning</div>
        <div class="price">$85/hr</div>
      </div>
      <div class="pricing-card" data-delay="1.1">
        <div class="service-name">Astrological based Coaching</div>
        <div class="price">$100/hr</div>
      </div>
    </div>
  </div>

  <!-- Scrolling Text Banner -->
  <div class="scrolling-banner">
    <div class="scrolling-content">
      <span>Ear candling</span>
      <span>•</span>
      <span>Food Sensitivity Testing</span>
      <span>•</span>
      <span>Flower Remedies</span>
      <span>•</span>
      <span>Psychic Mediumship</span>
      <span>•</span>
      <span>Internal Biome Inspection</span>
      <span>•</span>
      <span>Remote Services</span>
      <span>•</span>
      <span>Crysta Body Balancing</span>
      <span>•</span>
      <span>Psychic Tuning</span>
      <span>•</span>
      <span>Chakra Balancing</span>
      <span>•</span>
      <span>Native America Swedish Massage</span>
      <span>•</span>
      <span>Lymphatic Massage</span>
      <span>•</span>
      <span>Pre Natal Massage</span>
      <span>•</span>
      <span>Active Labor Massage</span>
      <span>•</span>
      <span>Clean Balance and Boost</span>
      <span>•</span>
      <span>Release and Renew</span>
      <span>•</span>
      <span>Hand Ears and Feet Reflexology</span>
      <span>•</span>
      <span>Graston Techniques</span>
      <span>•</span>
      <span>Therapeutic Massage</span>
      <span>•</span>
      <span>Trigger Point Therapy</span>
      <span>•</span>
      <span>Hot Stone Massage</span>
      <span>•</span>
      <span>Raindrop Therapy</span>
      <span>•</span>
      <span>Reiki</span>
      <span>•</span>
      <span>Cupping Massage</span>
      <span>•</span>
      <span>Ear candling</span>
      <span>•</span>
      <span>Food Sensitivity Testing</span>
      <span>•</span>
      <span>Flower Remedies</span>
      <span>•</span>
      <span>Psychic Mediumship</span>
      <span>•</span>
      <span>Internal Biome Inspection</span>
      <span>•</span>
      <span>Remote Services</span>
      <span>•</span>
      <span>Crysta Body Balancing</span>
      <span>•</span>
      <span>Psychic Tuning</span>
      <span>•</span>
      <span>Chakra Balancing</span>
      <span>•</span>
      <span>Native America Swedish Massage</span>
      <span>•</span>
      <span>Lymphatic Massage</span>
      <span>•</span>
      <span>Pre Natal Massage</span>
      <span>•</span>
      <span>Active Labor Massage</span>
      <span>•</span>
      <span>Clean Balance and Boost</span>
      <span>•</span>
      <span>Release and Renew</span>
      <span>•</span>
      <span>Hand Ears and Feet Reflexology</span>
      <span>•</span>
      <span>Graston Techniques</span>
      <span>•</span>
      <span>Therapeutic Massage</span>
      <span>•</span>
      <span>Trigger Point Therapy</span>
      <span>•</span>
      <span>Hot Stone Massage</span>
      <span>•</span>
      <span>Raindrop Therapy</span>
      <span>•</span>
      <span>Reiki</span>
      <span>•</span>
      <span>Cupping Massage</span>
      <span>•</span>
      <span>Ear candling</span>
      <span>•</span>
      <span>Food Sensitivity Testing</span>
      <span>•</span>
      <span>Flower Remedies</span>
      <span>•</span>
      <span>Psychic Mediumship</span>
      <span>•</span>
      <span>Internal Biome Inspection</span>
      <span>•</span>
      <span>Remote Services</span>
      <span>•</span>
      <span>Crysta Body Balancing</span>
      <span>•</span>
      <span>Psychic Tuning</span>
      <span>•</span>
      <span>Chakra Balancing</span>
      <span>•</span>
      <span>Native America</span>
      <span>•</span>
      <span>Swedish Massage</span>
      <span>•</span>
      <span>Lymphatic Massage</span>
      <span>•</span>
      <span>Pre Natal Massage</span>
      <span>•</span>
      <span>Active Labor Massage</span>
      <span>•</span>
      <span>Clean Balance and Boost</span>
      <span>•</span>
      <span>Release and Renew</span>
      <span>•</span>
      <span>Hand Ears and Feet Reflexology</span>
      <span>•</span>
      <span>Graston Techniques</span>
      <span>•</span>
      <span>Therapeutic Massage</span>
      <span>•</span>
      <span>Trigger Point Therapy</span>
      <span>•</span>
      <span>Hot Stone Massage</span>
      <span>•</span>
      <span>Raindrop Therapy</span>
      <span>•</span>
      <span>Reiki</span>
      <span>•</span>
      <span>Cupping Massage</span>
    </div>
  </div>
</section>

<style>
  .pricing-section {
    background-color: #fff5b6;
    padding: 2.5rem 0 0 0;
    position: relative;
    overflow: hidden;
  }

  .pricing-container {
    max-width: 1200px;
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
    color: #53570e;
    margin: 0;
  }

  .pricing-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1.25rem;
    margin-bottom: 3rem;
  }

  .pricing-card {
    transform: translateX(50px);
    opacity: 0;
    transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    background: #fff;
    border-radius: 1.25rem;
    box-shadow: 0 4px 24px rgba(83, 87, 14, 0.08);
    padding: 1.5rem 1.25rem;
    border: 2px solid transparent;
  }

  /* Animation triggers when section gets animate class */
  :global(.pricing-section.animate) .pricing-card {
    transform: translateX(0);
    opacity: 1;
  }

  /* Staggered animation delays for each card */
  :global(.pricing-section.animate) .pricing-card[data-delay="0"] {
    transition-delay: 0s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.1"] {
    transition-delay: 0.1s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.2"] {
    transition-delay: 0.2s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.3"] {
    transition-delay: 0.3s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.4"] {
    transition-delay: 0.4s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.5"] {
    transition-delay: 0.5s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.6"] {
    transition-delay: 0.6s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.7"] {
    transition-delay: 0.7s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.8"] {
    transition-delay: 0.8s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="0.9"] {
    transition-delay: 0.9s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="1"] {
    transition-delay: 1s;
  }
  :global(.pricing-section.animate) .pricing-card[data-delay="1.1"] {
    transition-delay: 1.1s;
  }

  .pricing-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 40px rgba(83, 87, 14, 0.15);
    border-color: #53570e;
  }

  /* Remove hover effects on smaller screens */
  @media (max-width: 768px) {
    .pricing-card:hover {
      transform: none;
      box-shadow: 0 4px 24px rgba(83, 87, 14, 0.08);
      border-color: transparent;
    }
  }

  @keyframes slideInFromRight {
    from {
      transform: translateX(50px);
      opacity: 0;
    }
    to {
      transform: translateX(0);
      opacity: 1;
    }
  }

  @keyframes slideInUp {
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }

  .service-name {
    font-family: "DM Serif Display";
    font-size: 1.5rem;
    color: #53570e;
    margin-bottom: 1rem;
    line-height: 1.3;
  }

  .price {
    font-size: 2.5rem;
    font-weight: 700;
    color: #53570e;
    font-family: "DM Serif Display";
  }

  /* Scrolling Banner */
  .scrolling-banner {
    background: #53570e;
    padding: 2rem 0;
    overflow: hidden;
    white-space: nowrap;
    position: relative;
  }

  .scrolling-content {
    display: inline-block;
    animation: scrollLeft 180s linear infinite;
    white-space: nowrap;
  }

  .scrolling-content span {
    color: #fff5b6;
    font-size: 2.2rem;
    font-weight: 500;
    margin: 0 1rem;
    display: inline-block;
  }

  @keyframes scrollLeft {
    0% {
      transform: translateX(0);
    }
    100% {
      transform: translateX(-50%);
    }
  }

  /* Responsive Design */
  @media (max-width: 1024px) {
    .pricing-grid {
      grid-template-columns: repeat(3, 1fr);
      gap: 1rem;
    }

    h3 {
      font-size: 42px;
      padding-bottom: 2.5rem;
    }
    .scrolling-banner {
      padding: 1rem 0;
    }
    .scrolling-content span {
      font-size: 1.5rem;
    }
  }

  @media (max-width: 768px) {
    .pricing-section {
      padding: 2rem 0 0 0;
    }

    .pricing-container {
      padding: 0 1.5rem;
    }

    h3 {
      font-size: 36px;
      padding-bottom: 2rem;
    }

    .pricing-grid {
      grid-template-columns: 1fr;
      gap: 1rem;
      margin-bottom: 2rem;
    }

    .pricing-card {
      padding: 1.5rem 1.25rem;
    }

    .service-name {
      font-size: 1.25rem;
    }

    .price {
      font-size: 2rem;
    }

    .pricing-card:hover {
      transform: none;
      box-shadow: 0 4px 24px rgba(83, 87, 0.08);
      border-color: transparent;
    }

    .scrolling-content span {
      font-size: 1.65rem;
      margin: 0 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .pricing-section {
      padding: 1.5rem 0 0 0;
    }

    .pricing-container {
      padding: 0 1rem;
    }

    h3 {
      font-size: 28px;
      padding-bottom: 1.5rem;
    }

    .pricing-grid {
      grid-template-columns: 1fr;
      gap: 0.75rem;
    }

    .pricing-grid {
      gap: 1rem;
    }

    .pricing-card {
      padding: 1.25rem 1rem;
    }

    .service-name {
      font-size: 1.1rem;
    }

    .price {
      font-size: 1.75rem;
    }

    .scrolling-content span {
      font-size: 1.1rem;
      margin: 0 1.25rem;
    }
  }
</style>
