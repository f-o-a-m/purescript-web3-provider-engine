"use strict";

exports.engineToProvider = function (engine) { return engine; }

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
      return engine.start(callback);
    }
  }
}

exports.stopEngine = function(engine) {
  return function() {
    return engine.stop();
  }
}