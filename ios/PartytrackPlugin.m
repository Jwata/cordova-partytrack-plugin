// PartytrackPlugin.h

#import "PartytrackPlugin.h"

@implementation PartytrackPlugin

- (void)startWithAppIDAndKey: (CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    int appId = [[command.arguments objectAtIndex:0] intValue];
    NSString* appKey = [command.arguments objectAtIndex:1];

    NSLog(@"appId %d", appId);
    NSLog(@"appKey %@", appKey);

    [[Partytrack sharedInstance] startWithAppID:appId AndKey: appKey];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
