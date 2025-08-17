<script>
  // Props to receive from parent component
  export let isOpen = false;
  export let title = "";
  export let description = "";
  export let onClose = () => {};

  let modalElement;
  let overlayElement;

  function handleOverlayClick(event) {
    if (event.target === event.currentTarget) {
      closeModal();
    }
  }

  function handleKeydown(event) {
    if (event.key === "Escape") {
      closeModal();
    }
  }

  function closeModal() {
    // Hide modal immediately
    if (modalElement && overlayElement) {
      modalElement.classList.add("hidden");
      overlayElement.classList.add("hidden");
    }

    // Call onClose after a short delay to allow animation to complete
    setTimeout(() => {
      onClose();
    }, 400);
  }

  // Handle modal open/close transitions
  $: if (isOpen) {
    console.log("Modal should open, isOpen:", isOpen);
    // Remove hidden classes to show modal
    setTimeout(() => {
      if (modalElement && overlayElement) {
        console.log("Removing hidden classes");
        overlayElement.classList.remove("hidden");
        modalElement.classList.remove("hidden");
      }
    }, 10);
  } else {
    console.log("Modal should close, isOpen:", isOpen);
    // Add hidden classes to hide modal
    if (modalElement && overlayElement) {
      modalElement.classList.add("hidden");
      overlayElement.classList.add("hidden");
    }
  }

  // Prevent body scroll when modal is open
  $: if (isOpen) {
    document.body.style.overflow = "hidden";
  } else {
    document.body.style.overflow = "auto";
  }
</script>

<svelte:window on:keydown={handleKeydown} />

{#if isOpen}
  <!-- Modal Overlay -->
  <div
    class="modal-overlay hidden"
    on:click={handleOverlayClick}
    role="button"
    tabindex="0"
    on:keydown={(e) => e.key === "Enter" && closeModal()}
    bind:this={overlayElement}
  >
    <!-- Top spacing block to push content down -->
    <div class="spacing-block"></div>

    <!-- Modal Content -->
    <div
      class="modal-content hidden"
      role="dialog"
      aria-labelledby="modal-title"
      bind:this={modalElement}
    >
      <!-- Close Button -->
      <button
        class="close-button"
        on:click={closeModal}
        aria-label="Close modal"
      >
        ×
      </button>

      <!-- Modal Header -->
      <div class="modal-header">
        <h2 id="modal-title">{title}</h2>
      </div>

      <!-- Modal Body -->
      <div class="modal-body">
        <p>{description}</p>

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

    <!-- Bottom spacing block to push content up -->
    <div class="spacing-block"></div>
  </div>
{/if}

<style>
  .modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100vh;
    min-height: 100vh;
    background: rgba(0, 0, 0, 0.7);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    z-index: 10000;
    backdrop-filter: blur(4px);
    opacity: 1;
    transition: opacity 0.4s linear;
    overflow-y: auto;
    padding: 3rem 0;
  }

  .modal-overlay.hidden {
    opacity: 0;
  }

  .spacing-block {
    width: 100%;
    height: 3rem;
    min-height: 3rem;
    flex-shrink: 0;
    background: transparent;
    pointer-events: none;
  }

  .modal-content {
    background: #fff;
    border-radius: 1.5rem;
    box-shadow: 0 20px 60px rgba(83, 87, 14, 0.3);
    max-width: 600px;
    width: 100%;
    min-height: 400px;
    margin: 0 auto;
    overflow: visible;
    position: relative;
    transform: none;
    opacity: 1;
    transition:
      transform 0.4s cubic-bezier(0.5, 0, 0.5, 1),
      opacity 0.4s linear;
    flex-shrink: 0;
  }

  .modal-content.hidden {
    transform: scale(0.3) translateY(-50%);
    opacity: 0;
  }

  .close-button {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
    background: none;
    border: none;
    font-size: 2.5rem;
    color: #53570e;
    cursor: pointer;
    width: 3rem;
    height: 3rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    transition: all 0.2s ease;
    z-index: 10001;
  }

  .close-button:hover {
    transform: scale(1.1);
  }

  .modal-header {
    padding: 2rem 2rem 1rem 2rem;
    border-bottom: 1px solid rgba(83, 87, 14, 0.1);
  }

  .modal-header h2 {
    font-family: "DM Serif Display";
    font-size: 2rem;
    color: #53570e;
    margin: 0;
    text-align: center;
  }

  .modal-body {
    padding: 1.5rem 2rem 2rem 2rem;
  }

  .modal-body p {
    font-size: 1.1rem;
    line-height: 1.6;
    color: #333;
    margin-bottom: 1rem;
  }

  .schedule-section {
    margin-top: 2rem;
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
  @media (max-width: 1023px) {
    .modal-overlay {
      padding: 0;
      background: #fff;
      padding: 2rem 0;
    }

    .spacing-block {
      height: 2rem;
      min-height: 2rem;
    }

    .modal-content {
      max-width: 100vw;
      width: 100vw;
      border-radius: 0;
      box-shadow: none;
      overflow: visible;
      min-height: 300px;
    }

    .modal-header {
      padding: 3rem 2rem 1rem 2rem;
    }

    .modal-header h2 {
      font-size: 1.75rem;
    }

    .modal-body {
      padding: 1.5rem 2rem 3rem 2rem;
    }

    .modal-body p {
      font-size: 1rem;
    }

    .close-button {
      top: 0;
      right: 1.5rem;
      font-size: 3rem;
      width: 2.5rem;
      height: 2.5rem;
    }
  }

  @media (max-width: 767px) {
    .modal-overlay {
      padding: 2rem 0;
    }

    .spacing-block {
      height: 2rem;
      min-height: 2rem;
    }

    .modal-header h2 {
      font-size: 1.5rem;
    }

    .modal-body p {
      font-size: 0.95rem;
    }

    .schedule-section h3 {
      font-size: 1.1rem;
    }

    .office-links {
      flex-direction: column;
      gap: 0.5rem;
    }
  }
</style>
