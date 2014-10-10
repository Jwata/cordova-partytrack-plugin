// PartytrackPlugin.h

#import "PartytrackPlugin.h"

@implementation PartytrackPlugin

- (void)startWithAppID: (CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    Int appId = [command.arguments objectAtIndex:0];
    NSString* appKey = [command.arguments objectAtIndex:1];

    [[Partytrack sharedInstance] startWithAppID:appId AndKey: appKey];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
