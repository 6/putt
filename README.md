**putt** is a node.js module that lets you easily output text in lots of fun ways. It wraps a bunch of other libraries to make this as simple as possible.

    var putt = require('putt');
    putt().speak("This is spoken aloud by your computer");
    putt().desktop_notify("This appears as a desktop notification");

Supported output formats:

* Speech synthesizer (by [say.js](https://github.com/Marak/say.js))
* Desktop notification (by [node-growl](https://github.com/visionmedia/node-growl))
* POST request (by [restler](https://github.com/danwrong/restler))
* TODO: Email (by [nodemailer](https://github.com/andris9/nodemailer))
* More coming soon... (SMS/call - twilio API, twitter/fb, ???)

# Install

First, install [Node.JS](http://nodejs.org/) and [NPM](http://npmjs.org/) if you haven't already. Then, just `cd` into your project folder and run:

    npm install putt

# Usage

### Speech output

For `speak` to work:

* Mac: it should just work
* Linux: install [Festival](http://www.cstr.ed.ac.uk/projects/festival/) and see what voices you have available (e.g. `voice_rab_diphone`)

### Desktop notification output

For `desktop_notify` output to work, install:

* Mac: [growl](http://code.google.com/p/growl/downloads/list), including the `growlnotify` extra
* Linux: `notify-send` with `sudo apt-get install libnotify-bin` or equivalent

### POST request output

TODO

### Email output

TODO

### Twitter

First, [create a new Twitter application](https://dev.twitter.com/apps/new), and under the "Settings" tab, you will also want to give your app "Read and write" permissions so that we can write a tweet. Then, click the button at the bottom of the "Details" tab to generate an access token and secret.

Next, provide those keys and secrets to putt when you call it:

    putt({
        consumer_key: "your consumer key",
        consumer_secret: "your consumer secret",
        access_token: "your access token",
        access_token_secret: "your access token secret"
    }).tweet("This text will be tweeted by your account");
