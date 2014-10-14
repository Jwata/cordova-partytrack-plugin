// PartytrackPlugin.h

#import <Cordova/CDV.h>
#import "Partytrack.h"

@interface PartytrackPlugin : CDVPlugin {
}

- (void) startWithAppIDAndKey: (CDVInvokedUrlCommand*) command;

@end
