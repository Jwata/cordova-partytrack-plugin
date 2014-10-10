// PartyTrackPlugin.h

#import "Partytrack.h"

@implementation PartyTrackPlugin

- (void)startWithAppID: (CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* appId = [command.arguments objectAtIndex:0];
    NSString* appKey = [command.arguments objectAtIndex:1];

    [[Partytrack sharedInstance] startWithAppID:app_id AndKey: app_key];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
