(function() {
  function PartytrackPlugin() {}

  PartytrackPlugin.prototype.startWithAppIDAndKey = function(appId, appKey, onSuccess, onError) {
    cordova.exec(onSuccess, onError, 'PartyTrack', 'startWithAppID', [appId, appKey]);
  }

  init();

  function init (){
    if (!window.plugins) {
      window.plugins = {};
    }
    if (!window.plugins.partytrackPlugin) {
      window.partytrackPlugin = new PartytrackPlugin();
    }
  }

  if (typeof module != 'undefined' && module.exports) {
    module.exports = new PartytrackPlugin();
  }
})();
