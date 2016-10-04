//
//  NSString+TBUrl.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBUrl.h"

@implementation NSString (TBUrl)

- (NSString *)tb_stringByUrlEncoded
{
    CFStringRef urlString = CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                    (CFStringRef)self,
                                                                    NULL,
                                                                    (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                    kCFStringEncodingUTF8);
    return (__bridge NSString *)urlString;
}

@end
