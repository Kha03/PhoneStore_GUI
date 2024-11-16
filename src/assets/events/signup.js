var pass = document.getElementById("exampleInputPassword1");
var pwdIcon = document.getElementById("pwd");

pwdIcon.addEventListener("click", () => {
  if (pwdIcon.src.includes("view.png")) {
    pwdIcon.src = "../assets/icon/hide.png";
  } else if (pwdIcon.src.includes("hide.png")) {
    pwdIcon.src = "../assets/icon/view.png";
  }

  if (pass.type === "password") {
    pass.type = "text";
  } else {
    pass.type = "password";
  }
});