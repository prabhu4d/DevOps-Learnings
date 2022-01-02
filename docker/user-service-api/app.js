const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.json([
    {
      name: "Prabhu",
      email: "prabhu@gmail.com",
    },
    {
      name: "hello",
      email: "vignesh@gmail.com",
    },
    {
      name: "Kannan",
      email: "kannan@gmail.com",
    },
  ]);
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
