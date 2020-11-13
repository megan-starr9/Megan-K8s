const express = require('express')
const app = express()
const port = 3002

app.get('/', (req, res) => {
  res.send('ratemygamemaster.com')
})

app.listen(port, () => {
  console.log(`Example app listening at on port ${port}`)
})
