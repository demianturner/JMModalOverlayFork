//
//  DTAppDelegate.m
//  ModalTest
//
//  Created by Demian Turner on 10/04/2014.
//  Copyright (c) 2014 Seagull Systems. All rights reserved.
//

#import "DTAppDelegate.h"

@implementation DTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)testModal:(id)sender {
    _modalOverlay.contentViewController = _vc;
    _modalOverlay.animates = YES;
    _modalOverlay.animationDirection = JMModalOverlayDirectionBottom;
    _modalOverlay.shouldOverlayTitleBar = NO;
    _modalOverlay.shouldCloseWhenClickOnBackground = YES;
    
    _modalOverlay.backgroundColor = [NSColor colorWithCalibratedWhite:0.0 alpha:0.6];
    [_modalOverlay showInWindow:self.window];
}

#pragma mark -
#pragma mark notification
- (BOOL)modalOverlayShouldClose:(JMModalOverlay *)modalOverlay{
    NSLog(@"modalOverlayShouldClose => YES");
    
    return YES;
}
- (void)modalOverlayWillShow:(NSNotification *)notification{
    NSLog(@"WillShow");
}
- (void)modalOverlayDidShow:(NSNotification *)notification{
    NSLog(@"DidShow");
}
- (void)modalOverlayWillClose:(NSNotification *)notification{
    NSLog(@"WillClose");
}
- (void)modalOverlayDidClose:(NSNotification *)notification{
    NSLog(@"DidClose");
}
@end
