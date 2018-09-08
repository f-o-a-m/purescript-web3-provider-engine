"use strict";
const ProviderEngine = require('web3-provider-engine')

exports.newProviderEngine = function () {
  return new ProviderEngine();
}

exports.addSubprovider = function(engine) {
  return function(subprovider) {
    return function() {
      return engine.addProvider(subprovider);
    }
  }
}

exports.startEngine = function(engine) {
  return function(callback) {
    return function() {
      engine.start(callback);
      return engine;
    }
  }
}

exports.stopEngine = function(engine) {
  return function() {
    return engine.stop();
  }
}