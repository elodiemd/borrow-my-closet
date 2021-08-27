import flatpickr from "flatpickr";

const setTodaysDate = () => {
  const date = new Date()
  return date.setDate(date.getDate() - 1)
}


const initFlatpickr = () => {
  if (document.querySelector('.datepicker')) {
    const calendar = flatpickr(".datepicker", {
      altInput: true,
      mode: "range",
      inline: true,
      minDate: Date.now(),
      disable: JSON.parse(document.querySelector('.datepicker').dataset.dates)
    });
  }
}

export { initFlatpickr };