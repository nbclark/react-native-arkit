//
//  RCTBambuserPlayer.m
//  Flock
//
//  Created by Nicholas Clark on 6/20/17.
//  Copyright © 2017 DoubleDutch. All rights reserved.
//

#import "RCTARSKView.h"

#import <React/RCTView.h>
#import <React/UIView+React.h>
#import <ARKit/ARKit.h>

@interface RCTARSKView() <ARSKViewDelegate>

@property (nonatomic, copy) RCTDirectEventBlock onVideoLoadFail;
@property (nonatomic, copy) RCTDirectEventBlock onPlaybackStarted;
@property (nonatomic, copy) RCTDirectEventBlock onPlaybackPaused;
@property (nonatomic, copy) RCTDirectEventBlock onPlaybackStopped;
@property (nonatomic, copy) RCTDirectEventBlock onPlaybackCompleted;
@property (nonatomic, copy) RCTDirectEventBlock onDurationKnown;//: (double) duration;
@property (nonatomic, copy) RCTDirectEventBlock onCurrentViewerCountUpdated;//: (int) viewers;
@property (nonatomic, copy) RCTDirectEventBlock onTotalViewerCountUpdated;//: (int) viewers;

@end

@implementation RCTARSKView

- (instancetype)initWithFrame:(CGRect)frame
{
  if ((self = [super initWithFrame:frame])) {
    ARSKView* p = [[ARSKView alloc] init];
    p.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    p.delegate = self;
    [self addSubview:p];
    _sceneKitView = p;
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  _sceneKitView.frame = self.bounds;
}

//- (void)setPlayVideoURI: (NSString*) resourceUri
//{
//  [self.sceneKitView playVideo:resourceUri];
//}
//
//- (void) setStopVideo:(BOOL)play
//{
//  [self.player stopVideo];
//}
//
//- (void) setPauseVideo:(BOOL)play
//{
//  [self.player pauseVideo];
//}
//
//- (void) setPlayVideo:(BOOL)play
//{
//  [self.player playVideo];
//}
//
//- (void) setSeekTo:(double)time
//{
//  [self.player seekTo:time];
//}
//
//- (void) videoLoadFail
//{
//  if (self.onVideoLoadFail) {
//    self.onVideoLoadFail(@{});
//  }
//}
//- (void) playbackStarted
//{
//  if (self.onPlaybackStarted) {
//    self.onPlaybackStarted(@{});
//  }
//}
//- (void) playbackPaused
//{
//  if (self.onPlaybackPaused) {
//    self.onPlaybackPaused(@{});
//  }
//}
//- (void) playbackStopped
//{
//  if (self.onPlaybackStopped) {
//    self.onPlaybackStopped(@{});
//  }
//}
//- (void) playbackCompleted
//{
//  if (self.onPlaybackCompleted) {
//    self.onPlaybackCompleted(@{});
//  }
//}
//- (void) durationKnown: (double) duration
//{
//  if (self.onDurationKnown) {
//    self.onDurationKnown(@{ @"duration" : @(duration) });
//  }
//}
//-(void) currentViewerCountUpdated: (int) viewers
//{
//  if (self.onCurrentViewerCountUpdated) {
//    self.onCurrentViewerCountUpdated(@{@"viewers":@(viewers)});
//  }
//}
//-(void) totalViewerCountUpdated: (int) viewers
//{
//  if (self.onTotalViewerCountUpdated) {
//    self.onTotalViewerCountUpdated(@{ @"viewers" : @(viewers)});
//  }
//}

@end
