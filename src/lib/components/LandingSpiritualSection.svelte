<script>
  import LandingInfoModal from "./LandingInfoModal.svelte";

  const services = [
    {
      title: "Release Ceremonies",
      desc: `Join us and experience a beautiful peaceful energy healing that is sure to ease your soul! You do not have to be a certified energy practitioner to join us. Come soak up the healing and love!`,
      fullDesc: `Join us and experience a beautiful peaceful energy healing that is sure to ease your soul! You do not have to be a certified energy practitioner to join us. Come soak up the healing and love!`,
    },
    {
      title: "Psychics & Readers",
      desc: `Psychics have the ability to receive the energy you emit. They respect the energy they receive from you and interpret them sensibly. A good psychic gives psychic readings to help you empower yourself.`,
      fullDesc: `Psychics have the ability to receive the energy you emit. They respect the energy they receive from you and interpret them sensibly. A good psychic gives psychic readings to help you empower yourself. We provide Psychic Readings in various forms with a collection of awe-inspiring readers who offer
        Psychic Medium Readings
        Oracle Card Readings
        Crystal Readings
        Chalk Sketch Readings
        Past Life Readings
        Astrology Readings.
        Angel Readings
        Group Readings and Parties also available.`,
    },
    {
      title: "Spiritual Retreats",
      desc: `Releasing, cleansing, rebuilding, and loving YOU! You will experience things like Drumming, Chanting, Meditating, Releasing, Soul Searching, Energy work, Healing tips.`,
      fullDesc: `Releasing, cleansing, rebuilding, and loving YOU! You will experience things like Drumming, Chanting, Meditating, Releasing, Soul Searching, Energy work, Healing tips.`,
    },
    {
      title: "Reiki",
      desc: `Reiki is a simple, natural and safe method of spiritual healing and self-improvement that everyone can use. It has been effective in helping virtually every known illness and malady and always creates a beneficial effect. It also works in conjunction with all other medical or therapeutic techniques to relieve side effects and promote recovery.`,
      fullDesc: `Reiki is a simple, natural and safe method of spiritual healing and self-improvement that everyone can use. It has been effective in helping virtually every known illness and malady and always creates a beneficial effect. It also works in conjunction with all other medical or therapeutic techniques to relieve side effects and promote recovery. Reiki Energy Healing- Reiki Energy Healing is an ancient healing practice that rebalances your energy from within. Most patients describe a Reiki Healing Treatment as relaxing and exhilarating. Our Reiki Room is specifically designed for your comfort and is filled with clusters and lamps of Pink Himalayan Salt and various types of healing crystals for your highest healing experience. A One Hour Reiki Healing Treatment is $65.00`,
    },
    {
      title: "Clean, Balance, and Boost",
      desc: `Over ten years ago, Tracey Schwalbach, ND, LMT, created a beautiful and deeply supportive healing session known as Clean, Balance, and Boost - a signature experience offered only at Green Tree Essentialz. This nurturing process is designed to help you feel lighter, clearer, and more connected to your true self.`,
      fullDesc: `Over ten years ago, Tracey Schwalbach, ND, LMT, created a beautiful and deeply supportive healing session known as Clean, Balance, and Boost - a signature experience offered only at Green Tree Essentialz. This nurturing process is designed to help you feel lighter, clearer, and more connected to your true self. We begin with Clean, using gentle Access Consciousness techniques to release the thoughts, energies, and patterns that no longer serve your highest good. This phase is like an energetic spring cleaning for your mind and spirit-creating space for healing and clarity. Next comes Balance, where Reiki is used to align and harmonize your energy system. Your chakras are gently rebalanced, helping you feel calm, centered, and at ease in your body and emotions. Finally, we move into Boost, a sacred energy transfer known as Deeksha, which helps raise your vibration, awaken inner peace, and connect you with a sense of oneness and joy. Throughout your session, you'll remain fully clothed and may experience the comforting use of essential oils, crystals, and other healing tools, intuitively selected to support your unique journey. The session lasts up to one hour, and we recommend wearing comfortable clothing to help you fully relax and receive. Clean, Balance, and Boost is perfect for those feeling overwhelmed, stuck, or simply in need of deep energetic renewal. It's a gentle, powerful experience that leaves you feeling grounded, uplifted, and reconnected to your higher self.`,
    },
    {
      title: "Weddings",
      desc: `Love comes in many forms, and your ceremony should be a reflection of your unique journey. Tracey Schwalbach has been an ordained minister for over a decade, crafting and officiating weddings that range from whimsical steampunk to amazing Pride unions, from deeply spiritual to beautifully simple. Whether you're planning a traditional wedding, a hand-tying ritual, or something completely your own, Tracey will hold space for your story with compassion, creativity, and joy. `,
      fullDesc: `Love comes in many forms, and your ceremony should be a reflection of your unique journey. Tracey Schwalbach has been an ordained minister for over a decade, crafting and officiating weddings that range from whimsical steampunk to amazing Pride unions, from deeply spiritual to beautifully simple. Whether you're planning a traditional wedding, a hand-tying ritual, or something completely your own, Tracey will hold space for your story with compassion, creativity, and joy. We honor all paths, all beliefs, and all love and we would be deeply honored to be part of your special day.`,
    },
  ];

  // Modal state
  let isModalOpen = false;
  let modalTitle = "";
  let modalDescription = "";

  function openModal(title, description) {
    modalTitle = title;
    modalDescription = description;
    isModalOpen = true;
  }

  function closeModal() {
    isModalOpen = false;
  }
</script>

<section
  id="spiritual-services-section"
  class="landing-natural-health-services-section"
>
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
              src="/imgs/release-ceremonies-mandala.png"
              alt="release"
              width="55"
              height="55"
            /><span>Release Ceremonies</span>
          </h4>
        </div>
        <p>{services[0].desc}</p>
        <div class="service-hover-panel">
          <button
            class="learn-more-button"
            on:click={() => openModal(services[0].title, services[0].fullDesc)}
          >
            Learn more <i class="fas fa-arrow-right"></i>
          </button>
        </div>
      </div>
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/readers-mandala.png"
              alt="readers"
              width="55"
              height="55"
            /><span>Psychics & Readers</span>
          </h4>
        </div>
        <p>{services[1].desc}</p>
        <div class="service-hover-panel">
          <button
            class="learn-more-button"
            on:click={() => openModal(services[1].title, services[1].fullDesc)}
          >
            Learn more <i class="fas fa-arrow-right"></i>
          </button>
        </div>
      </div>

      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/retreats-mandala.png"
              alt="retreats"
              width="55"
              height="55"
            /><span>Spiritual Retreats</span>
          </h4>
        </div>
        <p>{services[2].desc}</p>
        <div class="service-hover-panel">
          <button
            class="learn-more-button"
            on:click={() => openModal(services[2].title, services[2].fullDesc)}
          >
            Learn more <i class="fas fa-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>

    <div class="nh-row nh-row-2">
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/reiki-mandala.png"
              alt="reiki"
              width="55"
              height="55"
            /><span>Reiki</span>
          </h4>
        </div>
        <p>{services[3].desc}</p>
        <div class="service-hover-panel">
          <button
            class="learn-more-button"
            on:click={() => openModal(services[3].title, services[3].fullDesc)}
          >
            Learn more <i class="fas fa-arrow-right"></i>
          </button>
        </div>
      </div>

      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/weddings-mandala.png"
              alt="weddings"
              width="55"
              height="55"
            /><span>Weddings</span>
          </h4>
        </div>
        <p>{services[5].desc}</p>
        <div class="service-hover-panel">
          <button
            class="learn-more-button"
            on:click={() => openModal(services[5].title, services[5].fullDesc)}
          >
            Learn more <i class="fas fa-arrow-right"></i>
          </button>
        </div>
      </div>

      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/imgs/boost-mandala.png"
              alt="boost"
              width="55"
              height="55"
            /><span>Clean, Balance, and Boost</span>
          </h4>
        </div>
        <p>{services[4].desc}</p>
        <div class="service-hover-panel">
          <button
            class="learn-more-button"
            on:click={() => openModal(services[4].title, services[4].fullDesc)}
          >
            Learn more <i class="fas fa-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Modal component -->
<LandingInfoModal
  isOpen={isModalOpen}
  title={modalTitle}
  description={modalDescription}
  onClose={closeModal}
/>

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
    margin: 5rem auto 21rem auto;
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
    margin-bottom: 0.7rem;
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
  .service-header img {
    margin-top: -5px;
    margin-left: -5px;
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

  .learn-more-button {
    color: #53570e;
    font-weight: 600;
    text-decoration: none;
    font-size: 1.1rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    transition: color 0.2s;
    background: none;
    border: none;
    cursor: pointer;
    font-family: inherit;
  }

  .learn-more-button:hover {
    color: #222;
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
