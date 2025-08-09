// index.js
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const apiKey = process.env.API_KEY;

app.get('/', (req, res) => {
  res.send(`Hello, world! API_KEY starts with-newv2: ${apiKey ? apiKey.slice(0,4) : 'N/A'}`);
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
