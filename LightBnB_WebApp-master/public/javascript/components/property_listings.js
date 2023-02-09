$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  function addListing(listing) {
    $propertyListings.append(listing);
  }
  function clearListings() {
    $propertyListings.empty();
  }
  window.propertyListings.clearListings = clearListings;

  function addProperties(properties, isReservation = false) {
    clearListings();
    $propertyListings.append(`
    <div class="date_container">
      <p>From: <input type="text" id="datepicker_from"></p>
      <p>To: <input type="text" id="datepicker_to"></p>
    </div>
    `);
    $("#datepicker_from").datepicker({ defaultDate: new Date() });
    for (const propertyId in properties) {
      const property = properties[propertyId];
      const listing = propertyListing.createListing(property, isReservation);
      addListing(listing);
    }
  }
  window.propertyListings.addProperties = addProperties;

});