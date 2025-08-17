<section class="intuitive-reading-section">
  <div class="parallax-background"></div>

  <div class="intuitive-reading-content flex-centered">
    <div class="intuitive-reading-card">
      <img src="/imgs/white-owl.jpg" alt="" />
      <div>
        <h2>Intuitive Readings with Tracey</h2>
        <p>
          A sacred space for guidance, healing, and inner clarity... An
          intuitive reading - sometimes called a "psychic reading"- is a soulful
          experience that offers insight, comfort, and guidance from the unseen
          realms. Tracey creates a peaceful and sacred environment where each
          client can feel supported, seen, and gently guided on their journey.
          Each one-hour session is a deeply personal and thorough unfolding.
          Tracey draws from a wide array of intuitive tools - dowsing,
          astrology, mediumship, guides, and Angels - using whichever methods
          are called forward during the session. Spirit leads the way, offering
          messages and clarity that meet the client exactly where they are.
          Clients are welcome to come with questions or simply with an open
          heart. No two sessions are alike - each one is attuned to the unique
          energy, needs, and intentions of the individual. Readings are
          available in person or by phone Every session is gentle, heartfelt,
          and profoundly personalized Let the wisdom of the universe speak.
          Tracey is honored to be the bridge between the seen and the unseen,
          the question and the answer, the heart and the stars.
        </p>
      </div>
    </div>
  </div>
</section>

<style>
  .intuitive-reading-section {
    position: relative;
    height: 80vh; /* Full viewport height */
    overflow: hidden;
  }

  .parallax-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100vw; /* Full viewport width */
    height: 80vh; /* Full viewport height */
    background-image: url("/imgs/landing-bark.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Creates parallax effect */
    z-index: 1;
  }
  .intuitive-reading-card {
    display: flex;
    margin-top: 100px;
    width: 1000px;
    height: 550px;
    background-color: aliceblue;
    position: relative;
    z-index: 100;
    border-radius: 10px;
  }
  .intuitive-reading-card img {
    height: 550px;
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
  }
  .intuitive-reading-card h2 {
    font-size: 1.75rem;
    font-family: "DM Serif Display";
    color: #53570e;
    letter-spacing: 1px;
    margin-bottom: 1rem;
  }
  .intuitive-reading-card p {
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 400;
    margin-bottom: 1rem;
    line-height: 1.6;
  }
  @media (max-width: 1130px) {
    .intuitive-reading-card h2 {
      font-size: 1.25rem;
      letter-spacing: 0.5px;
    }
  }
</style>
