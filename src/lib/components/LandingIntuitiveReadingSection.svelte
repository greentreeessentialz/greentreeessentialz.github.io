<section class="intuitive-reading-section">
  <div class="parallax-background"></div>

  <div class="intuitive-reading-content">
    <div class="test"></div>
  </div>
</section>

<style>
  .intuitive-reading-section {
    position: relative;
    height: 100vh; /* Full viewport height */
    overflow: hidden;
  }

  .parallax-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100vw; /* Full viewport width */
    height: 100vh; /* Full viewport height */
    background-image: url("/imgs/landing-bark.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Creates parallax effect */
    z-index: 1;
  }
</style>
