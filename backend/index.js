require('dotenv').config()

const express = require("express")
const app = express()
const port = process.env.PORT
const cors = require("cors")

const profile = require('./routes/profile')

app.use(express.urlencoded({extended: true}))
app.use(express.json())
app.use(cors())
app.use('/profile', profile)

app.listen(port, () => {
  console.log(`[e7-Manager-API] Running on port: ${port}`)
})