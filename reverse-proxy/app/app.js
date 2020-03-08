const http = require('http')
const port = 3000

const requestHandler = (request, response) => {
  console.log(request.url)
  console.log(JSON.stringify(request.headers));
  response.end('You reach the App Server!')
}

const server = http.createServer(requestHandler)

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log(`Server is listening on ${port}`)
})
