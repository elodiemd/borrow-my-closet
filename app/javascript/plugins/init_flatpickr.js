import flatpickr from "flatpickr";

const setTodaysDate = () => {
  const date = new Date()
  return date.setDate(date.getDate() - 1)
}


const initFlatpickr = () => {
  if (document.querySelector('.datepicker')) {
    const dates = JSON.parse(document.querySelector('.datepicker').dataset.dates)
    const calendar = flatpickr(".datepicker", {
      altInput: true,
      mode: "range",
      inline: true,
      minDate: Date.now(),
      disable: JSON.parse(document.querySelector('.datepicker').dataset.dates)
    });
    // if (dates) {
    //   calendar['disable'] = JSON.parse(document.querySelector('.datepicker').dataset.dates)
    //   console.log('%cinit_flatpickr.js line:20 calendar', 'color: #007acc;', calendar);
    // }
  }
}

export { initFlatpickr };