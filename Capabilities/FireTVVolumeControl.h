//
//  FireTVVolumeControl.h
//  react-native-connect-sdk
//
//  Created by Shwet Solanki on 27/02/21.
//

#import <Foundation/Foundation.h>
#import <VolumeControl.h>

@class FireTVCapabilityMixin;

NS_ASSUME_NONNULL_BEGIN

@interface FireTVVolumeControl : NSObject <VolumeControl>

@property (nonatomic, strong) FireTVCapabilityMixin *capabilityMixin;

@end

NS_ASSUME_NONNULL_END
