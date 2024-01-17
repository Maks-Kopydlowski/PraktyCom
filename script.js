let loginPraktykant = document.getElementById("loginPraktykant");
let loginPracodawca = document.getElementById("loginPracodawca");
let loginPraktykantButton = document.getElementById("typKontaPraktykant");
let loginPracodawcaButton = document.getElementById("typKontaPracodawca");

loginPraktykantButton.addEventListener("click", () => {
  loginPraktykantButton.style.borderRight = "solid #0b3142 1px";
  loginPraktykantButton.style.borderTop = "unset";
  loginPracodawcaButton.style.borderLeft = "unset";
  loginPracodawcaButton.style.borderTop = "solid #0b3142 1px";
});
loginPracodawcaButton.addEventListener("click", () => {
  loginPracodawcaButton.style.borderLeft = "solid #0b3142 1px";
  loginPracodawcaButton.style.borderTop = "unset";
  loginPraktykantButton.style.borderRight = "unset";
  loginPraktykantButton.style.borderTop = "solid #0b3142 1px";
});
