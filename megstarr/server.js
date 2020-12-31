const express = require('express')
const app = express()
const port = 3000

// Set render engine
app.set( 'view engine', 'twig' );

app.use(express.static('public'));

app.get('/', (req, res) => {
  res.render('index.twig');
})

app.get('/projects', (req, res) => {
  res.render('projects.twig');
})

app.get('/resume', (req, res) => {
  res.render('resume.twig');
})

app.listen(port, () => {
  console.log(`Example app listening at on port ${port}`)
})
