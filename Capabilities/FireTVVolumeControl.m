//
//  FireTVVolumeControl.m
//  react-native-connect-sdk
//
//  Created by Shwet Solanki on 27/02/21.
//

#import "FireTVVolumeControl.h"
#import "FireTVCapabilityMixin.h"
#import <AmazonFling/RemoteMediaPlayer.h>

@interface FireTVVolumeControl ()
/// An object managing play state subscription, if created.
@property (nonatomic, strong) ServiceSubscription *muteStateSubscription;
@property (nonatomic, strong) ServiceSubscription *volumeStateSubscription;

@end

@interface FireTVVolumeControl (Configuration) <FireTVCapabilityMixin>

@end

@implementation FireTVVolumeControl

- (void)setMute:(BOOL)mute success:(SuccessBlock)success failure:(FailureBlock)failure { 
    [self continueTask:[self.remoteMediaPlayer setMute:mute] withSuccessBlock:success andFailureBlock:failure];
}

- (void)setVolume:(float)volume success:(SuccessBlock)success failure:(FailureBlock)failure { 
    [self continueTask:[self.remoteMediaPlayer setVolume:volume] withSuccessBlock:success andFailureBlock:failure];
}

- (id<VolumeControl>)volumeControl { 
    return self;
}

- (CapabilityPriorityLevel)volumeControlPriority { 
    return CapabilityPriorityLevelHigh;
}

- (void)volumeDownWithSuccess:(SuccessBlock)success failure:(FailureBlock)failure {
    
}

- (void)volumeUpWithSuccess:(SuccessBlock)success failure:(FailureBlock)failure { 
    
}

#pragma mark - Forwarding to Configuration

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return ([self.capabilityMixin respondsToSelector:aSelector] ?
            self.capabilityMixin :
            [super forwardingTargetForSelector:aSelector]);
}

@end
