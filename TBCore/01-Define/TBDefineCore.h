//
//  TBDefineCore.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#ifndef Core_TBDefineCore_h
#define Core_TBDefineCore_h

// Application name
#define TB_APP_NAME             [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleNameKey]
#define TB_APP_BUNDLE_ID        [[NSBundle mainBundle] bundleIdentifier]
#define TB_APP_VERSION_NUMBER   [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]
#define TB_APP_BUILD_NUMBER     [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey]


// Version iOS
#define TB_DETECT_IOS_CURRENT   [[[UIDevice currentDevice] systemVersion] floatValue]
#define TB_DETECT_IOS_6_X       (TB_DETECT_IOS_CURRENT >= 6.0)
#define TB_DETECT_IOS_7_X       (TB_DETECT_IOS_CURRENT >= 7.0)
#define TB_DETECT_IOS_8_X       (TB_DETECT_IOS_CURRENT >= 8.0)
#define TB_DETECT_IOS_9_X       (TB_DETECT_IOS_CURRENT >= 9.0)


// Device
#define TB_DEVICE_BOUNS                 [[UIScreen mainScreen] bounds]
#define TB_DEVICE_BOUNS_WIDTH           TB_DEVICE_BOUNS.size.width
#define TB_DEVICE_BOUNS_HEIGHT          TB_DEVICE_BOUNS.size.height
#define TB_DEVICE_SCALE                 [[UIScreen mainScreen] scale]

#define TB_DETECT_IPHONE    (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define TB_DETECT_IPAD      (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define TB_DETECT_IPHONE_3x5_INCH   ([[UIScreen mainScreen] bounds].size.height == 480.0)
#define TB_DETECT_IPHONE_4x0_INCH   ([[UIScreen mainScreen] bounds].size.height == 568.0)

// Orientation
#define TB_DEVICE_ORIENTATION_CURRENT              [UIApplication sharedApplication].statusBarOrientation
#define TB_DETECT_DEVICE_ORIENTATION_PORTRAIT      UIInterfaceOrientationIsPortrait(TB_DEVICE_ORIENTATION_CURRENT)
#define TB_DETECT_DEVICE_ORIENTATION_LANDSCAPE     UIInterfaceOrientationIsLandscape(TB_DEVICE_ORIENTATION_CURRENT)
//#define TB_DETECT_DEVICE_ORIENTATION_FACE_UP       (TB_DEVICE_ORIENTATION_CURRENT == UIDeviceOrientationFaceUp)   ? YES : NO
//#define TB_DETECT_DEVICE_ORIENTATION_FACE_DOWN     (TB_DEVICE_ORIENTATION_CURRENT == UIDeviceOrientationFaceDown) ? YES : NO

// Notification
#define TB_REGISTER_NOTIFICATION() \
if ( TB_DETECT_IOS_8_X ) \
{ \
    UIUserNotificationSettings *notificationSettings = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]; \
    \
    [[UIApplication sharedApplication] registerUserNotificationSettings:notificationSettings]; \
    [[UIApplication sharedApplication] registerForRemoteNotifications]; \
} \
else \
{ \
    [[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert)]; \
} \

// Log
#define TB_DEBUG_MODE 1

#ifdef DEBUG
#   define TBLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#   define TBLog(...)
#endif

#endif
