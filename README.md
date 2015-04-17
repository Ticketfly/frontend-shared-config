# Front End Shared Config

Shared configuration across all Ticketfly Ember.js projects.

Add addon to `ember-cli` project as a dependency:

```sh
npm install frontend-shared-config --save-dev
```

Run generator:

```sh
ember g frontend-shared-config
```

Generator will do several things:

+ adds new dependencies
  + `broccoli-jscs`
  + `broccoli-sass`
  + `git-repo-version`
  + `ember-cli-yuidoc`
  + `ember-cli-bugsnag`
  + `ember-analytics`
  + `ember-cli-mirage`
+ adds `.jscsrc` file and `jscs` rules
+ adds `.travis.yml` file
+ adds `yuidoc.json` file
+ adds `testem.json` file
+ adds `.gitignore` file

### Bugsnag && NewRelic

Once you run the generator, integrating with `Bugsnag` and `NewRelic` is easy.
Just create `.bugsnag` and `.newrelic` files or add new object in your `config`:

```javascript
var ENV = {
  bugsnag: {
  },
  newRelic: {
  }
};
```

More info: [ember-cli-bugsnag](https://github.com/twokul/ember-cli-bugsnag) and [ember-analytics](https://github.com/twokul/ember-analytics).

## Environment settings

We should all have these aliases below to `.zshrc` or `.bashrc` or `.bash.profile`. `bom` is a command that will make sure to re-install [Bower](http://bower.io) packages. `nom` is a command that will make sure to re-install [NPM](http://npmjs.com) packages. `nombom` makes sure that you Ember CLI project state is reliably reset.

Unfortunately, we need to run `nombom` every time upgrade of Ember CLI needs to happen because of the nature of the package managers.

```sh
alias bom="rm -rf bower_components && bower cache clean && bower i"
alias nom="rm -rf node_modules && npm cache clean && npm i"
alias nombom="rm -rf bower_components node_modules && npm cache clean && bower cache clean && npm i && bower i"
```
