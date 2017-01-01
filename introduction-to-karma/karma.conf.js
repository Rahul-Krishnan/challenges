/* jshint esversion: 6 */
// karma.conf.js
module.exports = function(config) {
  config.set({
    // use the PhantomJS browser
    browsers: ['PhantomJS'],

    // files that Karma will server to the browser
    files: [
    // use Babel polyfill to emulate a full ES6 environment in PhantomJS
    'node_modules/babel-polyfill/dist/polyfill.js',
    // all js files in test folder
    'test/**/*.js'
    ],

    // use the Jasmine testing framework
    frameworks: ['jasmine'],
    // test reporters that Karma should use
    reporters: [
      // use karma-spec-reporter to report results to the browser's console
      'spec'
    ],
    // karma-spec-reporter configuration
    specReporter: {
      // remove meaningless stack trace when tests do not pass
      maxLogLines: 1,
      // do not print information about tests that are passing
      suppressPassed: true
    },
    // before serving files in the test folder to the browser
    preprocessors: {
      'test/**/*.js': [
        // use karma-webpack to preprocess the files via webpack
        'webpack'
      ]
    },
    // webpack configuration used by karma-webpack
    webpack: {
      module: {
        loaders: [
          // use babel-loader to transpile the test folder
          {
            test: /\.jsx?$/,
            exclude: /node_modules/,
            loader: 'babel'
          }
        ]
      }
    },
    webpackMiddleware: {
      // do not output webpack build information to the browser's console
      noInfo: true
    }
  })
}
