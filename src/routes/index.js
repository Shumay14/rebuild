"use strict";
const express = require("express");
const router = express.Router();
const multer = require("multer");
const upload = multer({
  storage: "uploads/",
});

const multiImg = upload.router.get("/", (req, res) => {
  res.render("home/index");
});

router.get("/login", (req, res) => {
  res.render("home/login");
});

module.exports = router;
