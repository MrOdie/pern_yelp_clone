require("dotenv").config();
const express = require('express');
const app = express();
const port = process.env.PORT || 3001;

/**
 * START NODE SERVER
 */
app.listen(port, () => {
  console.log(`Server started on Port: ${port}`);
});

/**
 * GET ALL Restaurants
 * 
 */
app.get("/getRestaurants", async(req, res) => {
  try {
    console.log("Get all restaurants");
    res.json("hello there");
  } catch (err) {
    console.error(err);
  }
});