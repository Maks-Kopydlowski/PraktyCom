let userIcon = document.getElementById("login");
let optionDiv = document.getElementById("opcje");
let body = document.getElementsByTagName("body");

userIcon.addEventListener("click", () => {
  if (optionDiv.style.display === "block") {
    optionDiv.style.display = "none";
  } else {
    optionDiv.style.display = "block";
  }
});
