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

- (CGSize)tb_sizeOfMultiLineLabel
{
    //Label text
    NSString *aLabelTextString = [self text];
    
    //Label font
    UIFont *aLabelFont = [self font];
    
    //Width of the Label
    CGFloat aLabelSizeWidth = self.frame.size.width;
    
#ifdef TB_DETECT_IOS_7_X
    //Return the calculated size of the Label
    return [aLabelTextString boundingRectWithSize:CGSizeMake(aLabelSizeWidth, MAXFLOAT)
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{
                                                    NSFontAttributeName : aLabelFont
                                                    }
                                          context:nil].size;
#else
    return [aLabelTextString sizeWithFont:aLabelFont
                        constrainedToSize:CGSizeMake(aLabelSizeWidth, MAXFLOAT)
                            lineBreakMode:NSLineBreakByWordWrapping];
#endif
    
    return [self bounds].size;
}

@end
