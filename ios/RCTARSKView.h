//
//  RCTBambuserPlayer.h
//  Flock
//
//  Created by Nicholas Clark on 6/20/17.
//  Copyright © 2017 DoubleDutch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTView.h>

@class RCTBridge, ARSKView;

@interface RCTARSKView : RCTView

@property (nonatomic, weak) ARSKView* sceneKitView;

@end
