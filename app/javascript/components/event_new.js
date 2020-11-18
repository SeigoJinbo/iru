const ongoingFormCondition = () => {
  const ongoing_true = document.querySelector("#event_ongoing_true")
  const ongoing_false = document.querySelector("#event_ongoing_false")
  const days_of_the_week = document.querySelector("#days_of_the_week")
  const date_with_time = document.querySelector("#date_with_time")
  if (ongoing_false) {
    ongoing_false.addEventListener("change", (event) => {
      // Do something (callback)
      // event.preventDefault();
      days_of_the_week.classList.add("d-none");
      //days_of_the_week.setAttribute("event[ongoing]", "");
      days_of_the_week.querySelector("#event_start_time").setAttribute("name","");
      days_of_the_week.querySelector("#event_end_time").setAttribute("name","");
      date_with_time.classList.remove("d-none");
      date_with_time.querySelector("#event_start_time").setAttribute("name","event[start_time]");
      date_with_time.querySelector("#event_end_time").setAttribute("name","event[end_time]");
    });
    ongoing_true.addEventListener("change", (event) => {
      // Do something (callback)
      event.preventDefault();
      days_of_the_week.classList.remove("d-none");
            days_of_the_week.querySelector("#event_start_time").setAttribute("name","event[start_time]");
      days_of_the_week.querySelector("#event_end_time").setAttribute("name","event[end_time]");

      date_with_time.classList.add("d-none");
      date_with_time.querySelector("#event_start_time").setAttribute("name","");
      date_with_time.querySelector("#event_end_time").setAttribute("name","");
    });
  }
};
export { ongoingFormCondition };
