//
//  TYVideoPlayerTrack.m
//  TYVideoPlayerDemo
//
//  Created by tany on 16/6/21.
//  Copyright © 2016年 tany. All rights reserved.
//

#import "TYVideoPlayerTrack.h"

@implementation TYVideoPlayerTrack

- (id)initWithStreamURL:(NSURL *)url
{
    if (self = [super init]) {
        _streamURL = url;
    }
    return self;
}

- (void)streamURLWithCompleteBlock:(void (^)(NSURL *))completeBlock
{
    completeBlock(_streamURL);
}

- (void)resetTrack
{
    self.isPlayedToEnd = NO;
    self.isVideoLoadedBefore = NO;
    self.lastTimeInSeconds = 0;
}

@end
