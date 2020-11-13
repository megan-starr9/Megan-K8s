const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('megstarr.com')
})

app.listen(port, () => {
  console.log(`Example app listening at on port ${port}`)
})
