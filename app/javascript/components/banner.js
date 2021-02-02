import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Perfected blend of French art and baking...", "Proudly based in Hawke's Bay...", "We deliver across the Nth. Island.", "Perfected blend of French art and baking..."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
