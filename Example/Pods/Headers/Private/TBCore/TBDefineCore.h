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

// Orientation - interface
#define TB_INTERFACE_ORIENTATION_CURRENT        [UIApplication sharedApplication].statusBarOrientation
#define TB_INTERFACE_ORIENTATION_IS_PORTRAIT    UIInterfaceOrientationIsPortrait(TB_INTERFACE_ORIENTATION_CURRENT)
#define TB_INTERFACE_ORIENTATION_IS_LANDSCAPE   UIInterfaceOrientationIsLandscape(TB_INTERFACE_ORIENTATION_CURRENT)

// Orientation - device
#define TB_DEVICE_ORIENTATION_CURRENT           [[UIDevice currentDevice] orientation]
#define TB_DEVICE_ORIENTATION_IS_PORTRAIT      UIDeviceOrientationIsPortrait(TB_DEVICE_ORIENTATION_CURRENT)
#define TB_DEVICE_ORIENTATION_IS_LANDSCAPE     UIDeviceOrientationIsLandscape(TB_DEVICE_ORIENTATION_CURRENT)
#define TB_DEVICE_ORIENTATION_IS_FACE_UP       ((TB_DEVICE_ORIENTATION_CURRENT == UIDeviceOrientationFaceUp)   ? YES : NO)
#define TB_DEVICE_ORIENTATION_IS_FACE_DOWN     ((TB_DEVICE_ORIENTATION_CURRENT == UIDeviceOrientationFaceDown) ? YES : NO)


// Notification
#ifdef TB_DETECT_IOS_8_X
#   define TB_REGISTER_NOTIFICATION()   \
        UIUserNotificationSettings *notificationSettings = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil];  \
        \
        [[UIApplication sharedApplication] registerUserNotificationSettings:notificationSettings];  \
        [[UIApplication sharedApplication] registerForRemoteNotifications];
#else
#   define TB_REGISTER_NOTIFICATION()   \
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert)];
#endif


// Log
#ifdef DEBUG
#   define TBLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#   define TBLog(...)
#endif


//
#define TB_MAIN_THREAD(code)    \
dispatch_async(dispatch_get_main_queue(), ^{    \
    code;   \
});

#define TB_BACKGROUND_THREAD(code)  \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{    \
    code;   \
});

//
#define TB_ALLOW_WARNINGS(code) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wdeprecated-declarations\"") \
    code; \
_Pragma("clang diagnostic pop")


//
#define TB_WEAK(var) __weak typeof(var) TD_WEAK_##var = var;

#define TB_STRONG(var)  \
_Pragma("clang diagnostic push")    \
_Pragma("clang diagnostic ignored \"-Wshadow\"")    \
    __strong typeof(var) var = TD_WEAK_##var;   \
_Pragma("clang diagnostic pop")

#endif
