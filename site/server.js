const express = require('express')
const path = require('path')
const app = express()
const port = 3000

// Set render engine
app.set( 'view engine', 'twig' );
app.set('views', path.join(__dirname, '/views'));

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
