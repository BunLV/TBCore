//
//  NSString+TBChange.m
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBChange.h"

@implementation NSString (TBChange)

#pragma mark - Trimming
- (NSString *)tb_stringByTrimmingCharactersCaseWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString *)tb_stringByTrimmingCharactersCaseWhitespaceAndNewline
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)tb_stringByTrimmingCharactersCaseLetter
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet letterCharacterSet]];
}

- (NSString *)tb_stringByTrimmingCharactersCaseDecimalDigit
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
}

- (NSString *)tb_stringByTrimmingCharactersCaseLowercaseLetter
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet lowercaseLetterCharacterSet]];
}

- (NSString *)tb_stringByTrimmingCharactersCaseUppercaseLetter
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet uppercaseLetterCharacterSet]];
}

#pragma mark - HTML
- (NSString *)stringByRemovingCharactersInSet:(NSCharacterSet *)_characterSet
{
    NSScanner *cleanerScanner = [NSScanner scannerWithString:self];
    NSMutableString *cleanString = [NSMutableString stringWithCapacity:[self length]];
    
    // Make sure we don't skip whitespace, which NSScanner does by default
    [cleanerScanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@""]];
    
    while ( ![cleanerScanner isAtEnd] )
    {
        NSString *stringFragment;
        
        if ( [cleanerScanner scanUpToCharactersFromSet:_characterSet intoString:&stringFragment] )
        {
            [cleanString appendString:stringFragment];
        }
        
        [cleanerScanner scanCharactersFromSet:_characterSet intoString:nil];
    }
    
    return cleanString;
}

// -
- (NSString *)tb_stringByReplacingAmpEscapes
{
    NSMutableString *dirtyStringMutant = [NSMutableString stringWithString:self];
    
    // Replace "&"
    [dirtyStringMutant replaceOccurrencesOfString:@"&amp;"
                                       withString:@"&"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    // Replace "\"
    [dirtyStringMutant replaceOccurrencesOfString:@"&quot;"
                                       withString:@"\""
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    // Replace "<"
    [dirtyStringMutant replaceOccurrencesOfString:@"&lt;"
                                       withString:@"<"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    // Replace ">"
    [dirtyStringMutant replaceOccurrencesOfString:@"&gt;"
                                       withString:@">"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    // Replace "-"
    [dirtyStringMutant replaceOccurrencesOfString:@"&mdash;"
                                       withString:@"-"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    // Replace "'"
    [dirtyStringMutant replaceOccurrencesOfString:@"&apos;"
                                       withString:@"'"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    // fix import from old Firefox versions, which exported &#39; instead of a plain apostrophe
    [dirtyStringMutant replaceOccurrencesOfString:@"&#39;"
                                       withString:@"'"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    return [dirtyStringMutant stringByRemovingCharactersInSet:[NSCharacterSet controlCharacterSet]];
}

- (NSString *)tb_stringByReplacingEscapesAmp
{
    NSMutableString *dirtyStringMutant = [NSMutableString stringWithString:self];
    
    [dirtyStringMutant replaceOccurrencesOfString:@"&"
                                       withString:@"&amp;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    [dirtyStringMutant replaceOccurrencesOfString:@"\""
                                       withString:@"&quot;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    [dirtyStringMutant replaceOccurrencesOfString:@"<"
                                       withString:@"&lt;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    [dirtyStringMutant replaceOccurrencesOfString:@">"
                                       withString:@"&gt;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    
    return [NSString stringWithString:dirtyStringMutant];
}

@end
