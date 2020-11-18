const showEnrollForm = () => {
  const enrollForm = document.querySelectorAll(".enroll-form")
  const enrollBtn = document.querySelectorAll(".enroll-btn").forEach(item => {
    item.addEventListener("click", (event) => {
      // Do something (callback)
      console.log("test")
      event.preventDefault();

      enrollForm.forEach(item => {
      item.style.display = "block";
      });

      event.currentTarget.style.display = "none";
    });
  });
};


export { showEnrollForm };
