import express from "express"

const app = express()
app.get('/', (req:express.Request, res:express.Response) => {
  res.send('Send from cloud run!')
})

app.listen(3000, () => {
  console.log('Server is running on port 3000')
})


