"use strict";
const express = require("express");
const router = express.Router();
const multer = require("multer");
// const axios = require("axios");
// const fs = require("fs");

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
