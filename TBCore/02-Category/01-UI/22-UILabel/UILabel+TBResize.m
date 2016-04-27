//
//  UILabel+TBResize.m
//  MGGate
//
//  Created by BunLV on 2/3/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import "UILabel+TBResize.h"

#import "TBCore.h"

@implementation UILabel (TBResize)

- (CGFloat)tb_widthOfText
{
    //Label text
    NSString *textString = [self text];
    
    //Label font
    UIFont *textFont = [self font];
    
    //Width of the Label
    CGFloat heightOfLabel = self.frame.size.height;
    
#ifdef TB_DETECT_IOS_7_X
    //Return the calculated size of the Label
    return [textString boundingRectWithSize:CGSizeMake(MAXFLOAT, heightOfLabel)
                                    options:NSStringDrawingUsesLineFragmentOrigin
                                 attributes:@{
                                              NSFontAttributeName:textFont
                                              }
                                    context:nil].size.height;
#else
    return [textString sizeWithFont:textFont
                  constrainedToSize:CGSizeMake(MAXFLOAT, heightOfLabel)
                      lineBreakMode:NSLineBreakByWordWrapping].height;
#endif
    
    return [self bounds].size.height;
}

- (CGFloat)tb_heightOfText
{
    // Label text
    NSString *textString = [self text];
    
    // Label font
    UIFont *textFont = [self font];
    
    // Width of the Label
    CGFloat widthOfLabel = self.frame.size.width;
    
#ifdef TB_DETECT_IOS_7_X
    //Return the calculated size of the Label
    return [textString boundingRectWithSize:CGSizeMake(widthOfLabel, MAXFLOAT)
                                    options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{
                                                    NSFontAttributeName:textFont
                                                    }
                                    context:nil].size.height;
#else
    return [textString sizeWithFont:textFont
                  constrainedToSize:CGSizeMake(widthOfLabel, MAXFLOAT)
                      lineBreakMode:NSLineBreakByWordWrapping].height;
#endif
    
    return [self bounds].size.height;
}

@end
