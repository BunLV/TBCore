//
//  UIColor+TBCore.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - BASE - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -//
#define TB_COLOR_BASE_BLACK                                         [UIColor blackColor]
#define TB_COLOR_BASE_BLUE                                          [UIColor blueColor]
#define TB_COLOR_BASE_BROWN                                         [UIColor brownColor]
#define TB_COLOR_BASE_CLEAR                                         [UIColor clearColor]
#define TB_COLOR_BASE_CYAN                                          [UIColor cyanColor]
#define TB_COLOR_BASE_DARK_GRAY                                     [UIColor darkGrayColor]
#define TB_COLOR_BASE_DARK_TEXT                                     [UIColor darkTextColor]
#define TB_COLOR_BASE_GRAY                                          [UIColor grayColor]
#define TB_COLOR_BASE_GREEN                                         [UIColor greenColor]
#define TB_COLOR_BASE_GROUP_TABLE_VIEW_BACKGROUND                   [UIColor groupTableViewBackgroundColor]
#define TB_COLOR_BASE_LIGHT_GRAY                                    [UIColor lightGrayColor]
#define TB_COLOR_BASE_LIGHT_TEXT                                    [UIColor lightTextColor]
#define TB_COLOR_BASE_MAGENTA                                       [UIColor magentaColor]
#define TB_COLOR_BASE_PURPLE                                        [UIColor purpleColor]
#define TB_COLOR_BASE_RED                                           [UIColor redColor]
#define TB_COLOR_BASE_SCROLL_VIEW_TEXT_URED_BACKGROUND              [UIColor scrollViewTexturedBackgroundColor]
#define TB_COLOR_BASE_UNDE_RPAGE_BACKGROUND                         [UIColor underPageBackgroundColor]
#define TB_COLOR_BASE_VIEW_FLIPSIDE_BACKGROUND                      [UIColor viewFlipsideBackgroundColor]
#define TB_COLOR_BASE_WHITE                                         [UIColor whiteColor]
#define TB_COLOR_BASE_YELLOW                                        [UIColor yellowColor]

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - CUS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -//
#define TB_COLOR_CUSTOM_RGB(r, g, b) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:1.0]
#define TB_COLOR_CUSTOM_RGB_ALPHA(r, g, b, a) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:(a)]

@interface UIColor (TBCore)

@end
