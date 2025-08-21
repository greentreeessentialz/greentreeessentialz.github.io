<footer class="footer-section">
  <div class="footer-background">
    <img src="/imgs/footer.jpg" alt="tree under rainbow" />
  </div>

  <div class="footer-content">
    <div class="footer-grid">
      <!-- Logo and Company Info -->
      <div class="footer-column">
        <div class="footer-logo">
          <img
            src="/imgs/greentree-logo.png"
            alt="Green Tree Essentialz Logo"
          />
        </div>
        <p class="company-description">
          Full Service Natural Healing Center with comprehensive protocols and
          support to help you meet your wellness goals.
        </p>
        <div class="social-links">
          <a href="#" aria-label="Facebook" class="social-link">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="#" aria-label="Instagram" class="social-link">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="#" aria-label="Email" class="social-link">
            <i class="fas fa-envelope"></i>
          </a>
        </div>
      </div>

      <!-- Quick Links -->
      <div class="footer-column">
        <h3>Quick Links</h3>
        <ul class="footer-links">
          <li><a href="/">Home</a></li>
          <li><a href="/about">About Us</a></li>
          <li>
            <a href="http://greentreeessentialz.com/index.php/contact-us/"
              >Contact Us</a
            >
          </li>
          <li>
            <a href="http://greentreeessentialz.com/index.php/events-classes/"
              >Events & Classes</a
            >
          </li>
        </ul>
      </div>

      <!-- Services -->
      <div class="footer-column">
        <h3>Our Services</h3>
        <ul class="footer-links">
          <li><a href="#spiritual-services-section">Spiritual Services</a></li>
          <li>
            <a href="#health-services-section">Natural Health Services</a>
          </li>
          <li><a href="#intuitive-reading-section">Intuitive Readings</a></li>
          <li><a href="#pricing-section">Pricing & Packages</a></li>
        </ul>
      </div>

      <!-- Contact Information -->
      <div class="footer-column">
        <h3>Contact Information</h3>
        <div class="contact-info">
          <div class="contact-item">
            <i class="fas fa-phone"></i>
            <span>(810) 691-5777</span>
          </div>
          <div class="contact-item">
            <i class="fas fa-map-marker-alt"></i>
            <div class="addresses">
              <span>106 W. Lovett Charlotte, MI 48813</span>
              <span>9001 Miller Rd Swartz Creek, MI 48473</span>
            </div>
          </div>
          <div class="contact-item">
            <i class="fas fa-envelope"></i>
            <a href="mailto:GreenTreeEssentialz@gmail.com"
              >GreenTreeEssentialz@gmail.com</a
            >
          </div>
        </div>
      </div>
    </div>

    <!-- Bottom Bar -->
    <div class="footer-bottom">
      <p>&copy; 2024 Green Tree Essentialz. All rights reserved.</p>
    </div>
  </div>
</footer>

<style>
  .footer-section {
    height: 700px;
    position: relative;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .footer-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
  }

  .footer-background img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
  }

  .footer-content {
    position: relative;
    z-index: 2;
    width: 100%;
    max-width: 1200px;
    height: 450px;
    margin: 0 auto;
    padding: 2rem;
    background: #fff5b655;
    border-radius: 16px;
    backdrop-filter: blur(5px);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .footer-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 2rem;
    flex: 1;
  }

  .footer-column h3 {
    color: #53570e;
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: 1rem;
    position: relative;
  }

  .footer-column h3::after {
    content: "";
    position: absolute;
    bottom: -6px;
    left: 0;
    width: 30px;
    height: 2px;
    background: #53570e;
    border-radius: 1px;
  }

  .footer-logo img {
    height: 60px;
    width: auto;
    margin-bottom: 1rem;
  }

  .company-description {
    color: #333;
    line-height: 1.5;
    margin-bottom: 1rem;
    font-size: 0.9rem;
  }

  .social-links {
    display: flex;
    gap: 0.75rem;
  }

  .social-link {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 35px;
    height: 35px;
    background: #53570e;
    color: white;
    border-radius: 50%;
    text-decoration: none;
    transition: all 0.2s ease;
  }

  .social-link:hover {
    background: #fff5b6;
    color: #53570e;
  }

  .footer-links {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .footer-links li {
    margin-bottom: 0.5rem;
  }

  .footer-links a {
    color: #333;
    text-decoration: none;
    font-size: 0.9rem;
    transition: color 0.2s ease;
  }

  .footer-links a:hover {
    color: #53570e;
  }

  .contact-info {
    display: flex;
    flex-direction: column;
    gap: 0.75rem;
  }

  .contact-item {
    display: flex;
    align-items: flex-start;
    gap: 0.5rem;
    color: #333;
    font-size: 0.9rem;
  }

  .contact-item i {
    color: #53570e;
    margin-top: 0.2rem;
    min-width: 14px;
  }

  .addresses {
    display: flex;
    flex-direction: column;
    gap: 0.2rem;
  }

  .contact-item a {
    color: #333;
    text-decoration: none;
    transition: color 0.2s ease;
  }

  .contact-item a:hover {
    color: #53570e;
  }

  .footer-bottom {
    border-top: 1px solid rgba(255, 255, 255, 0.3);
    padding-top: 1rem;
    text-align: center;
  }

  .footer-bottom p {
    color: #333;
    margin: 0;
    font-size: 0.85rem;
  }

  /* Responsive Design */
  @media (max-width: 1024px) {
    .footer-grid {
      grid-template-columns: repeat(2, 1fr);
      gap: 1.5rem;
    }

    .footer-content {
      height: 500px;
      padding: 1.5rem;
    }
  }

  @media (max-width: 768px) {
    .footer-section {
      height: 600px;
    }

    .footer-content {
      height: 450px;
      padding: 1.5rem;
      margin: 0 1rem;
    }

    .footer-grid {
      grid-template-columns: 1fr;
      gap: 1.5rem;
    }

    .footer-column h3 {
      font-size: 1rem;
      text-align: center;
    }

    .footer-column h3::after {
      left: 50%;
      transform: translateX(-50%);
    }

    .footer-logo {
      text-align: center;
    }

    .footer-logo img {
      height: 50px;
    }

    .company-description {
      text-align: center;
      font-size: 0.85rem;
    }

    .social-links {
      justify-content: center;
    }

    .footer-links {
      text-align: center;
    }

    .contact-info {
      text-align: center;
    }

    .contact-item {
      justify-content: center;
      flex-direction: column;
      align-items: center;
      gap: 0.25rem;
    }

    .contact-item i {
      margin-top: 0;
    }
  }

  @media (max-width: 480px) {
    .footer-section {
      height: 550px;
    }

    .footer-content {
      height: 400px;
      padding: 1rem;
      margin: 0 0.5rem;
    }

    .footer-grid {
      gap: 1rem;
    }

    .footer-column h3 {
      font-size: 0.95rem;
    }

    .footer-logo img {
      height: 45px;
    }

    .company-description {
      font-size: 0.8rem;
    }

    .social-link {
      width: 30px;
      height: 30px;
    }

    .footer-links a {
      font-size: 0.85rem;
    }

    .contact-item {
      font-size: 0.85rem;
    }
  }
</style>
