const showEnrollForm = () => {
  const enrollBtn = document.querySelector("#enroll-btn");
  const enrollForm = document.querySelector("#enroll-form");
  if (enrollForm) {
    enrollBtn.addEventListener("click", (event) => {
      // Do something (callback)
      console.log("test")
      event.preventDefault();
      enrollForm.style.display = "block";
      event.currentTarget.style.display = "none";
    });
  }
};

export { showEnrollForm };
