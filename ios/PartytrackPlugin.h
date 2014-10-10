// PartyTrackPlugin.h

#import <Cordova/CDV.h>
#import "Partytrack.h"
#import "PartytrackPlugin.h"

@interface PartyTrackPlugin : CDVPlugin {
}

- (void) startWithAppID: (CDVInvokedUrlCommand*) command;

@end
