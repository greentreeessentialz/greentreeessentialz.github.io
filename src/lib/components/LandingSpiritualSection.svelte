<script>
  const services = [
    {
      title: "Release Ceremonies",
      desc: `Join us and experience a beautiful peaceful energy healing that is sure to ease your soul!! You do not have to be a certified energy practitioner to join us..come soak up the healing and love!`,
    },
    {
      title: "Psychics & Readers",
      desc: `Psychics have the ability to receive the energy you emit. They respect the energy they receive from you and interpret them sensibly. A good psychic gives psychic readings to help you empower yourself.`,
    },
    {
      title: "Spiritual Retreats",
      desc: `Releasing, cleansing, rebuilding, and loving YOU! You will experience things like Drumming, Chanting, Meditating, Releasing, Soul Searching, Energy work, Healing tips.`,
    },
    {
      title: "Reiki",
      desc: `Reiki is a simple, natural and safe method of spiritual healing and self-improvement that everyone can use. It has been effective in helping virtually every known illness and malady and always creates a beneficial effect. It also works in conjunction with all other medical or therapeutic techniques to relieve side effects and promote recovery.`,
    },
    {
      title: "Clean, Balance, and Boost",
      desc: `Over ten years ago, Tracey Schwalbach, ND, LMT, created a beautiful and deeply supportive healing session known as Clean, Balance, and Boost - a signature experience offered only at Green Tree Essentialz. This nurturing process is designed to help you feel lighter, clearer, and more connected to your true self.`,
    },
    {
      title: "Weddings",
      desc: `Love comes in many forms, and your ceremony should be a reflection of your unique journey. Tracey Schwalbach has been an ordained minister for over a decade, crafting and officiating weddings that range from whimsical steampunk to amazing Pride unions, from deeply spiritual to beautifully simple. Whether you're planning a traditional wedding, a hand-tying ritual, or something completely your own, Tracey will hold space for your story with compassion, creativity, and joy. `,
    },
  ];
</script>

<section class="landing-natural-health-services-section">
  <div class="mandala-bg">
    <img src="/imgs/spiritual-mandala.png" alt="Mandala" />
  </div>
  <h3>Spiritual Services</h3>
  <div class="landing-natural-health-flex">
    <div class="nh-row nh-row-1">
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/test-sp-mandala.png"
              alt="stethoscope"
              width="50"
              height="50"
            /><span>Release Ceremonies</span>
          </h4>
        </div>
        <p>{services[0].desc}</p>
        <div class="service-hover-panel">
          <a href="/spiritual-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/test-sp-mandala.png"
              alt="raindrop"
              width="50"
              height="50"
            /><span>Psychics & Readers</span>
          </h4>
        </div>
        <p>{services[1].desc}</p>
        <div class="service-hover-panel">
          <a href="/spiritual-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>

      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/test-sp-mandala.png"
              alt="foot"
              width="50"
              height="50"
            /><span>Spiritual Retreats</span>
          </h4>
        </div>
        <p>{services[2].desc}</p>
        <div class="service-hover-panel">
          <a href="/spiritual-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>
    </div>

    <div class="nh-row nh-row-2">
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/test-sp-mandala.png"
              alt="candles and soap"
              width="50"
              height="50"
            /><span>Reiki</span>
          </h4>
        </div>
        <p>{services[3].desc}</p>
        <div class="service-hover-panel">
          <a href="/spiritual-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>

      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/test-sp-mandala.png"
              alt="waves"
              width="50"
              height="50"
            /><span>Weddings</span>
          </h4>
        </div>
        <p>{services[5].desc}</p>
        <div class="service-hover-panel">
          <a href="/spiritual-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>

      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/test-sp-mandala.png"
              alt="waves"
              width="50"
              height="50"
            /><span>Clean, Balance, and Boost</span>
          </h4>
        </div>
        <p>{services[4].desc}</p>
        <div class="service-hover-panel">
          <a href="/spiritual-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .landing-natural-health-services-section {
    width: 100%;
    background-color: #53570e;
    position: relative;
    overflow: hidden;
  }
  .landing-natural-health-services-section h3 {
    font-family: "DM Serif Display";
    text-align: center;
    font-size: 52px;
    font-weight: 400;
    line-height: normal;
    padding-top: 4rem;
    padding-bottom: 2rem;
    background-color: #53570e;
    color: #fff5b6;
    position: relative;
    z-index: 2;
    margin: 0;
  }
  .landing-natural-health-flex {
    max-width: 1200px;
    width: 100%;
    margin: 5rem auto 25rem auto;
    padding: 0 2.5rem;
    box-sizing: border-box;
    position: relative;
    z-index: 2;
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  /* Key changes for equal height cards */
  .nh-row {
    display: flex;
    width: 100%;
    gap: 1rem;
    align-items: stretch; /* This makes all cards in a row equal height */
  }

  .nh-row-1 > .service-card {
    flex: 1 1 33%;
    min-width: 0;
  }
  .nh-row-2 > .service-card:nth-child(1) {
    flex: 0 0 30%;
    min-width: 0;
  }
  .nh-row-2 > .service-card:nth-child(2) {
    flex: 0 0 39%;
    min-width: 0;
  }
  .nh-row-2 > .service-card:nth-child(3) {
    flex: 0 0 28%;
    min-width: 0;
  }

  .landing-natural-health-flex .service-card {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    position: relative;
    padding: 1.5rem;
    box-sizing: border-box;
  }

  .landing-natural-health-flex .service-card p {
    font-size: 18px;
    line-height: 1.5;
    flex-grow: 1; /* This pushes the hover panel to the bottom */
    margin-bottom: 1rem;
  }

  @media (max-width: 900px) {
    .nh-row {
      flex-direction: column;
      gap: 1rem;
    }
    .nh-row-2 > .service-card:nth-child(1),
    .nh-row-2 > .service-card:nth-child(2),
    .nh-row-2 > .service-card:nth-child(3) {
      flex: 1;
    }
    .landing-natural-health-flex {
      margin: 2rem auto;
    }
  }
  @media (max-width: 500px) {
    .landing-natural-health-flex {
      padding: 0 1rem;
    }
  }

  .service-card {
    background: #fff;
    border-radius: 1.25rem;
    box-shadow: 0 4px 24px rgba(83, 87, 14, 0.08);
    transition: box-shadow 0.3s;
    min-height: 260px; /* Minimum height maintained */
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    position: relative;
    overflow: hidden;
  }

  .service-card:hover {
    box-shadow: 0 8px 32px rgba(83, 87, 14, 0.18);
  }

  .service-header {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    gap: 1rem;
    margin-bottom: 1rem;
  }

  .service-header h4 {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    font-size: 1.5rem;
    font-family: "DM Serif Display";
    color: #53570e;
    margin: 0;
  }

  .service-header i {
    font-size: 1.5rem;
    color: #53570e;
  }

  .service-hover-panel {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    height: 0;
    background: #fff5b6;
    color: #53570e;
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    pointer-events: none;
    transition: all 0.35s cubic-bezier(0.4, 0, 0.2, 1);
    border-radius: 0 0 1.25rem 1.25rem;
    padding: 0 1.5rem;
    z-index: 2;
  }

  .service-card:hover .service-hover-panel {
    height: 60px;
    opacity: 1;
    pointer-events: auto;
  }

  .learn-more-link {
    color: #53570e;
    font-weight: 600;
    text-decoration: none;
    font-size: 1.1rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    transition: color 0.2s;
  }

  .learn-more-link:hover {
    color: #000;
  }

  .mandala-bg {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
    z-index: 0;
    pointer-events: none;
    user-select: none;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
    background: #53570e;
  }

  .mandala-placeholder {
    font-size: 3rem;
    color: rgba(83, 87, 14, 0.1);
    animation: mandala-spin 20s linear infinite;
  }

  @keyframes mandala-spin {
    0% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(360deg);
    }
  }
</style>
