import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.querySelector('#banner-typed-text')) {

    new Typed('#banner-typed-text', {
      strings: ["The new way to rent clothes for special events."],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };