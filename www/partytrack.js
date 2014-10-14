(function() {
  function PartytrackPlugin() {}

  PartytrackPlugin.prototype.startWithAppIDAndKey = function(appId, appKey, onSuccess, onError) {
    cordova.exec(onSuccess, onError, 'PartyTrack', 'startWithAppID', [appId, appKey]);
  }

  modules.exports = new PartytrackPlugin();
})();
