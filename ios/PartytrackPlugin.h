// PartytrackPlugin.h

#import <Cordova/CDV.h>
#import "Partytrack.h"
#import "PartytrackPlugin.h"

@interface PartytrackPlugin : CDVPlugin {
}

- (void) startWithAppID: (CDVInvokedUrlCommand*) command;

@end
