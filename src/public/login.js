"use strict";

const user_id = document.querySelector("#user_id"),
  password = document.querySelector("#password"),
  loginBtn = documnet.querySelector("#button");

loginBtn.addEventListener("click", login);

function login() {
  if (!user_id.value) return alert("Please");
  if (!password.value) return alert("Please");

  const req = {
    user_id: user_id.value,
    password: password.value,
  };

  console.log(req);
  console.log(JSON.stringify(req));

  fetch("/login", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(req),
  })
    .then((res) => res.json())
    .then((res) => {
      if (res.success) {
        location.href = "/";
      } else {
        if (res.err) return alert(res.err);
        alert(res.msg);
      }
    })
    .catch((err) => {
      console.log("Errors!");
    });
}
