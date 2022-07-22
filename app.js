"use strict";

// set module
const express = require("express");
const dotenv = require("dotenv");
dotenv.config({ path: "./.env" });

const path = require("path");

const app = express();

// app setting
app.set("views", "./views"); // ("views", view관리 저장할 경로설정)
app.set("view engine", "ejs"); // view html template handler 엔진 설정

// define middleware use
const home = require("./src/routes"); // set homepage routes
app.use("/", home); // use -> 미들웨어 등록 메서드

const publicDirectory = path.join(__dirname, "./src/public"); // 경로 추가 public static data folder
app.use(express.static(publicDirectory));

app.use(express.static(`${__dirname}/src/public`));

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded({ extended: false }));

// Parse JSON bodies (as sent by API clients)
app.use(express.json());

// use token middleware
// JWT 로그인 잘 되나 확인 필요
app.use((req, res, next) => {
  res.header(
    "Access-Control-Allow-Headers",
    "x-access-token, Origin, Content-Type, Accept"
  );
  next();
});

module.exports = app;

/* app.get("/", (req, res) => {
  res.send("here is root!");
});

app.get("/login", (req, res) => {
  res.send("here is login!");
});

app.listen(3000, () => {
  console.log("Server Start!");
});
 */
