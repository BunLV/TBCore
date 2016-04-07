//
//  NSDate+TBCheck.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+TBCore.h"

@interface NSDate (TBCheck)

#pragma mark - Check
- (BOOL)tb_isEqualToDate:(NSDate *)_date;

// - Day
- (BOOL)tb_isSameDayAsDate:(NSDate *)_date;
- (BOOL)tb_isYesterday;
- (BOOL)tb_isToday;
- (BOOL)tb_isTomorrow;

// - Week
- (BOOL)tb_isSameWeekAsDate:(NSDate *)_date;
- (BOOL)tb_isLastWeek;
- (BOOL)tb_isThisWeek;
- (BOOL)tb_isNextWeek;

// - Month
- (BOOL)tb_isSameMonthAsDate:(NSDate *)_date;
- (BOOL)tb_isThisMonth;

// - Year
- (BOOL)tb_isSameYearAsDate:(NSDate *)_date;
- (BOOL)tb_isLastYear;
- (BOOL)tb_isThisYear;
- (BOOL)tb_isNextYear;

#pragma mark - Equal
- (BOOL)tb_isEarlierThanDate:(NSDate *)_data;
- (BOOL)tb_isLaterThanDate:(NSDate *)_data;

- (BOOL)tb_isInFuture;
- (BOOL)tb_isInPast;

- (BOOL)tb_isWeekend;
- (BOOL)tb_isWorkday;

@end
