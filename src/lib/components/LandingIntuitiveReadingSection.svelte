<script>
  import LandingInfoModal from "./LandingInfoModal.svelte";

  let isModalOpen = false;

  const fullText = `A sacred space for guidance, healing, and inner clarity... An intuitive reading - sometimes called a "psychic reading"- is a soulful experience that offers insight, comfort, and guidance from the unseen realms. Tracey creates a peaceful and sacred environment where each client can feel supported, seen, and gently guided on their journey. Each one-hour session is a deeply personal and thorough unfolding. Tracey draws from a wide array of intuitive tools - dowsing, astrology, mediumship, guides, and Angels - using whichever methods are called forward during the session. Spirit leads the way, offering messages and clarity that meet the client exactly where they are. Clients are welcome to come with questions or simply with an open heart. No two sessions are alike - each one is attuned to the unique energy, needs, and intentions of the individual. Readings are available in person or by phone Every session is gentle, heartfelt, and profoundly personalized Let the wisdom of the universe speak. Tracey is honored to be the bridge between the seen and the unseen, the question and the answer, the heart and the stars.`;

  const shortText = `A sacred space for guidance, healing, and inner clarity... An intuitive reading - sometimes called a "psychic reading"- is a soulful experience that offers insight, comfort, and guidance from the unseen realms. Tracey creates a peaceful and sacred environment where each client can feel supported, seen, and gently guided on their journey. Each one-hour session is a deeply personal and thorough unfolding. Tracey draws from a wide array of intuitive tools - dowsing, astrology, mediumship, guides, and Angels - using whichever methods are called forward during the session...`;

  function openModal() {
    isModalOpen = true;
  }

  function closeModal() {
    isModalOpen = false;
  }
</script>

<section class="intuitive-reading-section">
  <div class="parallax-background"></div>

  <div class="intuitive-reading-content flex-centered">
    <div class="intuitive-reading-card">
      <div class="card-image">
        <img src="/imgs/white-owl.jpg" alt="White owl for intuitive readings" />
      </div>
      <div class="card-content">
        <h2>Intuitive Readings with Tracey</h2>
        <p>
          {shortText}
          <button class="read-more-btn" on:click={openModal}>
            read more
          </button>
        </p>

        <!-- Schedule Appointment Section -->
        <div class="schedule-section">
          <h3>Schedule an appointment online</h3>
          <div class="divider"></div>
          <div class="office-links">
            <a
              title="Swartz Creek"
              href="https://www.vagaro.com/greentreeessentialzswartzcreek?fbclid=IwAR3TiZEaJXuBzGoxwXdeqDIE48wF3VjwEzF9Ee3njDIQlkXRqTNH-Gf_4j8&ig_fbb=true"
              target="_blank"
              rel="noopener"
            >
              Swartz Creek Office
            </a>
            <a
              title="Charlotte Office"
              href="https://www.vagaro.com/greentreeessentialz?fbclid=IwAR0D0P_ZmdJIuku1SZLErpoH0Kort3YI5Vml4Jp3BkcBz5ZCtudBr0RGmaA&ig_fbb=true"
              target="_blank"
              rel="noopener"
            >
              Charlotte Office
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Modal -->
<LandingInfoModal
  isOpen={isModalOpen}
  title="Intuitive Readings with Tracey"
  description={fullText}
  onClose={closeModal}
/>

<style>
  .intuitive-reading-section {
    position: relative;
    overflow: hidden;
    padding: 4rem 0;
  }

  .parallax-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100vw; /* Full viewport width */
    height: 100%;
    background-image: url("/imgs/landing-bark.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Creates parallax effect */
    z-index: 1;
  }

  .intuitive-reading-content {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 1rem;
  }

  .flex-centered {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .intuitive-reading-card {
    display: flex;
    margin: 0;
    width: 1000px;
    max-width: calc(100% - 5rem);
    background-color: #fff;
    position: relative;
    z-index: 100;
    border-radius: 10px;
    overflow: hidden;
  }

  .card-image {
    flex-shrink: 0;
  }

  .card-image img {
    height: 550px;
    width: auto;
    object-fit: cover;
  }

  .card-content {
    flex: 1;
    padding: 1.5rem;
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .intuitive-reading-card h2 {
    font-size: 1.75rem;
    font-family: "DM Serif Display";
    color: #53570e;
    letter-spacing: 1px;
    margin: 0;
  }

  .intuitive-reading-card p {
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 400;
    margin: 0;
    line-height: 1.6;
  }

  .read-more-btn {
    background: none;
    border: none;
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 600;
    text-decoration: underline;
    cursor: pointer;
    padding: 0;
    margin: 0;
    align-self: flex-start;
    transition: color 0.3s ease;
  }

  .read-more-btn:hover {
    color: #6b7112;
  }

  .schedule-section {
    margin-top: 1rem;
    text-align: center;
  }

  .schedule-section h3 {
    font-family: "DM Serif Display";
    font-size: 1.5rem;
    color: #53570e;
    margin: 0 0 1rem 0;
    font-weight: 500;
  }

  .divider {
    height: 2px;
    background: linear-gradient(90deg, transparent, #53570e, transparent);
    margin: 0 auto 1.5rem auto;
    width: 80%;
    max-width: 300px;
  }

  .office-links {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    flex-wrap: wrap;
  }

  .office-links a {
    color: #53570e;
    text-decoration: none;
    font-weight: 600;
    font-size: 1.1rem;
    padding: 0.75rem 1.5rem;
    border-radius: 0.75rem;
    background: #fff5b6;
    transition: all 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    border: 2px solid transparent;
  }

  .office-links a:hover {
    background: #53570e;
    color: #fff5b6;
    border-color: #53570e;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(83, 87, 14, 0.3);
  }

  /* Responsive Design */
  @media (max-width: 1130px) {
    .intuitive-reading-section {
      padding: 3rem 0;
    }

    .intuitive-reading-card {
      width: 900px;
      max-width: calc(100% - 3rem);
    }

    .intuitive-reading-card h2 {
      font-size: 1.25rem;
      letter-spacing: 0.5px;
    }

    .intuitive-reading-card p {
      font-size: 1rem;
    }

    .schedule-section h3 {
      font-size: 1.25rem;
    }

    .office-links a {
      font-size: 1rem;
      padding: 0.6rem 1.2rem;
    }
  }

  @media (max-width: 1023px) {
    .intuitive-reading-section {
      padding: 2.5rem 0;
    }

    .intuitive-reading-card {
      flex-direction: column;
      width: 800px;
      max-width: calc(100% - 2rem);
    }

    .card-image img {
      height: auto;
      width: 100%;
      max-height: 400px;
      border-radius: 10px 10px 0 0;
      object-position: top;
    }

    .card-content {
      padding: 1.5rem;
      gap: 1.2rem;
    }
  }

  @media (max-width: 768px) {
    .intuitive-reading-section {
      padding: 2rem 0;
    }

    .intuitive-reading-content {
      padding: 1.5rem 1rem;
    }

    .intuitive-reading-card {
      width: 100%;
      max-width: none;
    }

    .card-image img {
      max-height: 350px;
    }

    .card-content {
      padding: 1.5rem;
      gap: 1.2rem;
    }

    .intuitive-reading-card h2 {
      font-size: 1.5rem;
      text-align: center;
    }

    .intuitive-reading-card p {
      font-size: 1rem;
      text-align: center;
    }

    .read-more-btn {
      align-self: center;
      font-size: 1rem;
    }

    .schedule-section h3 {
      font-size: 1.25rem;
    }

    .office-links {
      flex-direction: column;
      gap: 0.5rem;
    }

    .office-links a {
      width: 100%;
      text-align: center;
      padding: 0.75rem 1rem;
    }
  }

  @media (max-width: 480px) {
    .intuitive-reading-section {
      padding: 1.5rem 0;
    }

    .intuitive-reading-content {
      padding: 1rem 0.5rem;
    }

    .intuitive-reading-card {
      width: 100%;
    }

    .card-image img {
      max-height: 350px;
    }

    .card-content {
      padding: 1rem;
      gap: 1rem;
    }

    .intuitive-reading-card h2 {
      font-size: 1.25rem;
    }

    .intuitive-reading-card p {
      font-size: 0.9rem;
    }

    .read-more-btn {
      font-size: 0.9rem;
    }

    .schedule-section h3 {
      font-size: 1.1rem;
    }

    .office-links a {
      font-size: 0.9rem;
      padding: 0.6rem 0.8rem;
    }
  }
</style>
