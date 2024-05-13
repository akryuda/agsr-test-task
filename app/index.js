const express = require('express');
const app = express();

app.listen(3000, () => {
 console.log("Server running on port 3000");
});

app.get("/health", (req, res, next) => {
  res.statusCode = 200;
  res.end();
});

app.get("/message", (req, res, next) => {
  res.statusCode = 200;
  res.json({"message": process.env.message});
  res.end();
});

