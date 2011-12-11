**putt** is a node.js module that lets you easily output text in lots of fun ways. It wraps a bunch of other libraries to make this as simple as possible.

    var putt = require('putt');
    putt().speak("This is spoken aloud by your computer");
    putt().desktop_notify("This appears as a desktop notification");

Supported output formats:

* Speech synthesizer (by [say.js](https://github.com/Marak/say.js))
* Desktop notification (by [node-growl](https://github.com/visionmedia/node-growl))
* POST request (by [restler](https://github.com/danwrong/restler))
* TODO: Email (by [nodemailer](https://github.com/andris9/nodemailer))
* Tweet (by [ntwitter](https://github.com/AvianFlu/ntwitter))
* More coming soon... (SMS/call - twilio API, twitter/fb, ???)

# Install

First, install [Node.JS](http://nodejs.org/) and [NPM](http://npmjs.org/). Then, `cd` into your project folder and run:

    npm install putt

For `speak` to work on Linux, install [Festival](http://www.cstr.ed.ac.uk/projects/festival/) and see what voices you have available (e.g. `voice_rab_diphone`).

For `desktop_notify` to work, install:

* Mac: [growl](http://code.google.com/p/growl/downloads/list), including the `growlnotify` extra
* Linux: `notify-send` with `sudo apt-get install libnotify-bin` or equivalent

# Usage

All output types have two optional callbacks that can be chained on:

* `done()` is called when the output finishes outputting
* `error(reason)` is called when an error is encountered during output

For example:

    putt().speak("I am talking").done(function() {
        console.log("Finished talking");
    }).error(function(reason) {
        console.log("Something went wrong:", reason);
    });

Note that you can chain these method calls in any order.

### Speech

TODO

### Desktop notification

TODO

### POST request

TODO

### Email

TODO

### Tweet

First, [create a new Twitter application](https://dev.twitter.com/apps/new), and under the "Settings" tab, you will also want to give your app "Read and write" permissions so that we can write a tweet. Then, click the button at the bottom of the "Details" tab to generate an access token and secret.

Next, provide those keys and secrets to putt when you call it:

    putt({
        consumer_key: "your consumer key",
        consumer_secret: "your consumer secret",
        access_token: "your access token",
        access_token_secret: "your access token secret"
    }).tweet("This text will be tweeted by your account");
