import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('rocket_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
