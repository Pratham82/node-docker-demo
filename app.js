import express from 'express'
import dotenv from 'dotenv'
dotenv.config()

const app = express()

const PORT = process.env.PORT || 3000

// Basic route
app.get('/', (_, res) =>
  res.json({
    status: 'Success',
    message: 'Node app is running  on Docker 🐋',
  })
)

app.listen(PORT, () =>
  console.log(`Server started on http://localhost:${PORT}`)
)
