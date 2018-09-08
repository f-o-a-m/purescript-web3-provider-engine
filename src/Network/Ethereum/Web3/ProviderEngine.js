"use strict";

exports.addSubprovider = function(engine) {
  return function(subprovider) {
    return function() {
      return engine.addSubprovider(subprovider);
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