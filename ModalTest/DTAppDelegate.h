//
//  DTAppDelegate.h
//  ModalTest
//
//  Created by Demian Turner on 10/04/2014.
//  Copyright (c) 2014 Seagull Systems. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DTViewController.h"
#import "JMModalOverlay.h"

@interface DTAppDelegate : NSObject <NSApplicationDelegate, JMModalOverlayDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet DTViewController *vc;
@property (weak) IBOutlet JMModalOverlay *modalOverlay;

- (IBAction)testModal:(id)sender;

@end
