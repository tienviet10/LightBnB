$(() => {
  getAllListings().then(function(json) {
    propertyListings.addProperties(json.properties);
    views_manager.show('listings');

    reserveFunction();
  });

});

const reserveFunction = () => {
  let ts = Date.now();
  let date_ob = new Date(ts);
  let date = date_ob.getDate();
  let month = date_ob.getMonth();
  let year = date_ob.getFullYear();

  $("#datepicker_from").datepicker();
  $("#datepicker_from").val(date + "/" + month + "/" + year);
  $("#datepicker_to").datepicker();
  $("#datepicker_to").val(date + 1 + "/" + month + "/" + year);
  $(".btn").on("click", (event) => {
    const dateFromArr = $("#datepicker_from").val().split("/");
    const newFromDate = `${dateFromArr[2]}-${dateFromArr[0]}-${dateFromArr[1]}`;
    const dateToArr = $("#datepicker_to").val().split("/");
    const newToDate = `${dateToArr[2]}-${dateToArr[0]}-${dateToArr[1]}`;

    makeReservation({property_id: event.target.id, start_date: newFromDate, end_date: newToDate});
  });
};