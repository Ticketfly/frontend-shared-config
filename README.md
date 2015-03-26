# Front End Shared Config

Shared configuration across all Ticketfly Ember.js projects.

Add addon to `ember-cli` project as a dependency:

``sh
npm install frontend-shared-config --save-dev
```

Run generator:

``sh
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
