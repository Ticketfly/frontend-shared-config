/* jshint node: true */
'use strict';

var path = require('path');

module.exports = {
  name: 'frontend-shared-config',

  blueprintsPath: function() {
    return path.join(__dirname, 'blueprints');
  }
};
