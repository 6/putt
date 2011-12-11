require('coffee-script');
var putt_lib = require('./lib/putt');
module.exports = function putt(config) {
  return new putt_lib.Putt(config); 
};
