const express = require('express')
const ip = require('ip')
const app = express()

const PORT = process.env.PORT || 3000 // Container Env var

app.get('/', (req, res) => {
  res.send('Hello, Express is working fine... :)')
})

app.listen(PORT, () => {
  console.log(`Container IP : ${ip.address()}:${PORT}`)
})
