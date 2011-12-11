# TODO in package.json put kyuri or jasmine (under devDependencies)
# also add "scripts": { "test": "vows --spec" } or jasmine equivalent

putt = require './lib/putt'

# test speaking and desktop notifications
putt().speak("Test 123 yoyo wassup").done ->
  putt().desktop_notify("Done speaking")

# start a test server to print out POST data it receives
express = require 'express'
server = express.createServer()
server.use(express.bodyParser())
server.post '/cool', (req, res) ->
  console.log "Received POST body:", req.body
  res.send ""
server.listen 3123

putt().post({"hot":"dog", "ham":"burger"}, {url: "http://localhost:3123/cool"})
.error (reason) ->
  console.log "PROBLEM..? #{reason}"
.done ->
  console.log "Done POSTing"
