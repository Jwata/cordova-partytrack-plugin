// PartytrackPlugin.h

#import "PartytrackPlugin.h"

@implementation PartytrackPlugin

- (void)startWithAppID: (CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    int appId = [command.arguments objectAtIndex:0];
    NSString* appKey = [command.arguments objectAtIndex:1];

    NSLog(@"appId %d", appId);
    NSLog(@"appKey %@", appKey);

    [[Partytrack sharedInstance] openDebugInfo];
    [[Partytrack sharedInstance] startWithAppID:appId AndKey: appKey];
    [[Partytrack sharedInstance] openDebugInfo];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
