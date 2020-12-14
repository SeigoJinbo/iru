const showEnrollForm = () => {
  const enrollBtn = document.querySelectorAll(".enroll-btn")
  enrollBtn.forEach(item => {
    item.addEventListener("click", (event) => {
      // Do something (callback)
      event.preventDefault();

      // enrollForm.forEach(form => {
      item.nextElementSibling.style.display = "block";
      // });

      event.currentTarget.style.display = "none";
    });
});
};

export { showEnrollForm };
