"use strict";
const CacheSubprovider = require('web3-provider-engine/subproviders/cache.js');
const FixtureSubprovider = require('web3-provider-engine/subproviders/fixture.js');
const FilterSubprovider = require('web3-provider-engine/subproviders/filters.js');
const VmSubprovider = require('web3-provider-engine/subproviders/vm.js');
const HookedWalletSubprovider = require('web3-provider-engine/subproviders/hooked-wallet.js');
const NonceTrackerSubprovider = require('web3-provider-engine/subproviders/nonce-tracker.js');
const RpcSubprovider = require('web3-provider-engine/subproviders/rpc.js');
const ProviderSubprovider = require('web3-provider-engine/subproviders/provider.js');
const InfuraSubprovider = require('web3-provider-engine/subproviders/infura.js');

exports.newCacheSubprovider = function() {
  return new CacheSubprovider();
}

exports.newFixtureSubprovider = function(opts) {
  return function() {
    return new FixtureSubprovider(opts);
  }
}

exports.newFilterSubprovider = function() {
  return new FilterSubprovider();
}

exports.newVmSubprovider = function(opts) {
  return function() {
    return new VmSubprovider(opts);
  }
}

exports.newHookedWalletSubprovider = function(opts) {
  return function() {
    return new HookedWalletSubprovider();
  }
}

exports.newNonceTrackerSubprovider = function() {
  return new NonceTrackerSubprovider();
}

exports.newRpcSubprovider = function(rpcUrl) {
  return function() {
    return new RpcSubprovider({ rpcUrl: rpcUrl });
  }
}

exports.newProviderSubprovider = function(provider) {
  return function() {
    return new ProviderSubprovider(provider);
  }
}

exports.newInfuraSubprovider = function(opts) {
  return function() {
    return new InfuraSubprovider(opts);
  }
}