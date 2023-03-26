const express = require('express')
const ip = require('ip')
const app = express()

const PORT = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.send('Hello, Express is working fine... :)')
})

app.listen(PORT, () => {
  console.log(`Server running on = ${ip.address()}:${PORT}`)
})
