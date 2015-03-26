'use strict';

module.exports = {
  normalizeEntityName: function() {},

  afterInstall: function() {
    this.addPackageToProject('broccoli-jscs', '0.0.21');
    this.addPackageToProject('broccoli-sass', '^0.6.2');
    this.addPackageToProject('git-repo-info', '^1.0.4');
    this.addPackageToProject('ember-cli-yuidoc', '0.6.4');
    this.addPackageToProject('ember-cli-bugsnag', '^0.0.7');
    this.addPackageToProject('ember-analytics', '^0.0.4');
  }
};
