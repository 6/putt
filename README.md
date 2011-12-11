**putt** is a node.js module that lets you easily output text in lots of fun ways. It wraps a bunch of other libraries to make this as simple as possible.

### Basic example

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

TODO

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

Example usage:

TODO

### Email output

TODO
