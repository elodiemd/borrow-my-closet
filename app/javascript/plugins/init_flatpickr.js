import flatpickr from "flatpickr";
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const setTodaysDate = () => {
  const date = new Date()
  return date.setDate(date.getDate() - 1)
}


const initFlatpickr = () => {
  const dates = JSON.parse(document.querySelector('.datepicker').dataset.dates)
  console.log('%cinit_flatpickr.js line:13 typeof dates', 'color: #007acc;', typeof dates);
  flatpickr(".datepicker", {
    altInput: true,
    mode: "range",
    inline: true,
    minDate: Date.now(),
    disable: dates
  });

}

export { initFlatpickr };