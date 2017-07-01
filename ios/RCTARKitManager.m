//
//  RCTBambuserPlayerManager.m
//  Flock
//
//  Created by Nicholas Clark on 6/20/17.
//  Copyright © 2017 DoubleDutch. All rights reserved.
//

#import "RCTARKitManager.h"
#import "RCTARSKView.h"

#import <UIKit/UIKit.h>
#import <React/RCTBridge.h>
#import <React/RCTUIManager.h>

@implementation RCTARKitManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [RCTARSKView new];
}

//RCT_REMAP_VIEW_PROPERTY(resourceUri, _player.resourceUri, NSString)
//RCT_REMAP_VIEW_PROPERTY(applicationId, _player.applicationId, NSString)
//RCT_REMAP_VIEW_PROPERTY(status, _player.status, enum BambuserPlayerState)
//RCT_REMAP_VIEW_PROPERTY(playbackPosition, _player.playbackPosition, double)
//RCT_REMAP_VIEW_PROPERTY(live, _player.live, BOOL)
//RCT_REMAP_VIEW_PROPERTY(VODControlsEnabled, _player.VODControlsEnabled, BOOL)
//RCT_REMAP_VIEW_PROPERTY(timeShiftModeEnabled, _player.timeShiftModeEnabled, BOOL)
//RCT_REMAP_VIEW_PROPERTY(seekableStart, _player.seekableStart, double)
//RCT_REMAP_VIEW_PROPERTY(seekableEnd, _player.seekableEnd, double)
//RCT_REMAP_VIEW_PROPERTY(volume, _player.volume, float)
//
//RCT_EXPORT_VIEW_PROPERTY(playVideoURI, NSString)
//RCT_EXPORT_VIEW_PROPERTY(playVideo, BOOL)
//RCT_EXPORT_VIEW_PROPERTY(pauseVideo, BOOL)
//RCT_EXPORT_VIEW_PROPERTY(stopVideo, BOOL)
//RCT_EXPORT_VIEW_PROPERTY(seekTo, double)
//
//RCT_EXPORT_VIEW_PROPERTY(onVideoLoadFail, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onPlaybackStarted, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onPlaybackPaused, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onPlaybackStopped, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onPlaybackCompleted, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onDurationKnown, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onCurrentViewerCountUpdated, RCTDirectEventBlock)
//RCT_EXPORT_VIEW_PROPERTY(onTotalViewerCountUpdated, RCTDirectEventBlock)

@end
