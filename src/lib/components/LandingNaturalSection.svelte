<script>
  const services = [
    {
      icon: "fa-stethoscope",
      title: "Health Consultations",
      desc: `Start your healing from the inside out with this Homeopathic Holistic approach to health care. Getting a Natural Health Screen will give you the information and tools you need to heal your own body with a more all natural pathway than what Modern Medicine is used to in today's Healthcare.`,
    },
    {
      icon: "fa-tint",
      title: "Raindrop",
      desc: `Rain Drop Therapy is a therapeutic topical application of essential oils. It stimulates all of the body systems on a physical and emotional level. The benefits of Rain Drop Therapy include pain reduction, stress relief, muscle relaxation and much more!`,
    },
    {
      icon: "fa-shoe-prints",
      title: "Reflexology",
      desc: `Reflexology is not a foot massage by any means. We have over 7,000 nerve endings in our feet and approximately 1300 or so in our hands. Each nerve corresponds to a particular area of the body. Using acupressure, high quality/organic oils and certain techniques to stimulate these nerve endings, we tell what area of your body that may be giving you some challenges and will help alleviate it for you.`,
    },
    {
      icon: "fa-baby",
      title: "Prenatal Massage",
      desc: `At Green Tree Essentialz, we're honored to walk beside you through the sacred journey of motherhood-offering gentle, nurturing support from the second trimester through postpartum recovery. Our prenatal and postnatal massage services are designed to soothe your body, calm your mind, and help you feel held every step of the way.`,
    },
    {
      icon: "fa-water",
      title: "Lymphatic Massage",
      desc: `If you've recently had cosmetic body surgery - whether it's a tummy tuck, liposuction, BBL, or another body contouring procedure- your body is working hard to heal, release fluid, and rebalance itself. That's where our gentle and supportive lymphatic massage comes in.`,
    },
  ];
</script>

<section class="landing-natural-health-services-section">
  <div class="mandala-bg">
    <img src="/imgs/natural-health-mandala.png" alt="Mandala" />
  </div>
  <h3>Natural Health Services</h3>
  <div class="landing-natural-health-flex">
    <div class="nh-row nh-row-1">
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/svgs/stethoscope.svg"
              alt="stethoscope"
              width="50"
              height="50"
            /><span>Health Consultations</span>
          </h4>
        </div>
        <p>{services[0].desc}</p>
        <div class="service-hover-panel">
          <a href="/natural-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/svgs/raindrop.svg"
              alt="raindrop"
              width="50"
              height="50"
            /><span>Raindrop</span>
          </h4>
        </div>
        <p>{services[1].desc}</p>
        <div class="service-hover-panel">
          <a href="/natural-services" class="learn-more-link"
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
              src="/svgs/reflexology-foot.svg"
              alt="foot"
              width="43"
              height="43"
            /><span>Reflexology</span>
          </h4>
        </div>
        <p>{services[2].desc}</p>
        <div class="service-hover-panel">
          <a href="/natural-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/svgs/prenatal-massage.svg"
              alt="candles and soap"
              width="50"
              height="50"
            /><span>Prenatal Massage</span>
          </h4>
        </div>
        <p>{services[3].desc}</p>
        <div class="service-hover-panel">
          <a href="/natural-services" class="learn-more-link"
            >Learn more <i class="fas fa-arrow-right"></i></a
          >
        </div>
      </div>
      <div class="service-card">
        <div class="service-header">
          <h4>
            <img
              src="/svgs/lymphatic-massage.svg"
              alt="waves"
              width="50"
              height="50"
            /><span>Lymphatic Massage</span>
          </h4>
        </div>
        <p>{services[4].desc}</p>
        <div class="service-hover-panel">
          <a href="/natural-services" class="learn-more-link"
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
    background-color: #fff5b6;
    position: relative;
    overflow: hidden;
  }
  .landing-natural-health-services-section h3 {
    font-family: "DM Serif Display";
    text-align: center;
    font-size: 52px;
    font-weight: 400;
    line-height: normal;
    padding-bottom: 2rem;
    background-color: #fff5b6;
    color: #53570e;
    position: relative;
    z-index: 2;
    margin: 0;
    padding-top: 2rem;
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
    flex: 1 1 50%;
    min-width: 0;
  }
  .nh-row-2 > .service-card:nth-child(1) {
    flex: 0 0 36%;
    min-width: 0;
  }
  .nh-row-2 > .service-card:nth-child(2) {
    flex: 0 0 31%;
    min-width: 0;
  }
  .nh-row-2 > .service-card:nth-child(3) {
    flex: 0 0 30%;
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
    background: rgb(83, 87, 14);
    color: #fff5b6;
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
    color: #fff5b6;
    font-weight: 600;
    text-decoration: none;
    font-size: 1.1rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    transition: color 0.2s;
  }

  .learn-more-link:hover {
    color: #fff;
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
    background: #fff5b6;
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
