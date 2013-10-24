/********* GoInstant.m Cordova Plugin Implementation *******/

#import "GoInstant.h"
#import <Cordova/CDV.h>

@implementation GoInstant

- (void)GoInstant:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* GoInstant = [command.arguments objectAtIndex:0];
    
    if (GoInstant != nil && [GoInstant length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:GoInstant];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end