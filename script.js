let loginPraktykant = document.getElementById("loginPraktykant");
let loginPracodawca = document.getElementById("loginPracodawca");
let loginPraktykantButton = document.getElementById("typKontaPraktykant");
let loginPracodawcaButton = document.getElementById("typKontaPracodawca");

loginPraktykantButton.addEventListener("click", () => {
  loginPraktykantButton.style.borderRight = "solid #0b3142 1px";
  loginPraktykantButton.style.borderTop = "unset";
  loginPracodawcaButton.style.borderLeft = "unset";
  loginPracodawcaButton.style.borderTop = "solid #0b3142 1px";
  loginPracodawcaButton.style.background = "#dbfab7";
  loginPraktykantButton.style.background = "#f3efe0";
  loginPraktykantButton.style.cursor = "unset";
  loginPracodawcaButton.style.cursor = "pointer";
});
loginPracodawcaButton.addEventListener("click", () => {
  loginPracodawcaButton.style.borderLeft = "solid #0b3142 1px";
  loginPracodawcaButton.style.borderTop = "unset";
  loginPraktykantButton.style.borderRight = "unset";
  loginPraktykantButton.style.borderTop = "solid #0b3142 1px";
  loginPraktykantButton.style.background = "#dbfab7";
  loginPracodawcaButton.style.background = "#f3efe0";
  loginPraktykantButton.style.cursor = "pointer";
  loginPracodawcaButton.style.cursor = "unset";
});
