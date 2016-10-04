//
//  NSDate+TBCheck.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSDate+TBCheck.h"

@implementation NSDate (TBCheck)

#pragma mark - Check
- (BOOL)tb_isEqualToDate:(NSDate *)_date
{
    return [self isEqualToDate:_date];
}

// - Day
- (BOOL)tb_isSameDayAsDate:(NSDate *)_date
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    NSDateComponents *componentsDate = [NSDate tb_dateComponentsWithDate:_date];
    
    return ((componentsSelf.year == componentsDate.year) && (componentsSelf.month == componentsDate.month) && (componentsSelf.day == componentsDate.day));
}

- (BOOL)tb_isYesterday
{
    return [self tb_isSameDayAsDate:[NSDate tb_yesterday]];
}

- (BOOL)tb_isToday
{
    return [self tb_isSameDayAsDate:[NSDate date]];
}

- (BOOL)tb_isTomorrow
{
    return [self tb_isSameDayAsDate:[NSDate tb_tomorrow]];
}

// - Week
- (BOOL)tb_isSameWeekAsDate:(NSDate *)_date
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    NSDateComponents *componentsDate = [NSDate tb_dateComponentsWithDate:_date];
    
    // Must be same week. 12/31 and 1/1 will both be week "1" if they are in the same week
    if ( componentsSelf.weekOfYear != componentsDate.weekOfYear )
    {
        return NO;
    }
    
    // Must have a time interval under 1 week.
    return (fabs([self timeIntervalSinceDate:_date]) < TB_DATE_WEEK);
}

- (BOOL)tb_isLastWeek
{
    return [self tb_isSameWeekAsDate:[NSDate tb_lastWeek]];
}

- (BOOL)tb_isThisWeek
{
    return [self tb_isSameWeekAsDate:[NSDate date]];
}

- (BOOL)tb_isNextWeek
{
    return [self tb_isSameWeekAsDate:[NSDate tb_nextWeek]];
}

// - Month
- (BOOL)tb_isSameMonthAsDate:(NSDate *)_date
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self withCalendarUnit:TB_DATE_COMPONENTS_CASE_MONTH];
    NSDateComponents *componentsDate = [NSDate tb_dateComponentsWithDate:_date withCalendarUnit:TB_DATE_COMPONENTS_CASE_MONTH];
    
    return ((componentsSelf.month == componentsDate.month) && (componentsSelf.year == componentsDate.year));
}

- (BOOL)tb_isThisMonth
{
    return [self tb_isSameMonthAsDate:[NSDate date]];
}

// - Year
- (BOOL)tb_isSameYearAsDate:(NSDate *)_date
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self withCalendarUnit:TB_DATE_COMPONENTS_CASE_YEAR];
    NSDateComponents *componentsDate = [NSDate tb_dateComponentsWithDate:_date withCalendarUnit:TB_DATE_COMPONENTS_CASE_YEAR];
    
    return (componentsSelf.year == componentsDate.year);
}

- (BOOL)tb_isLastYear
{
    return [self tb_isSameYearAsDate:[NSDate tb_lastWeek]];
}

- (BOOL)tb_isThisYear
{
    return [self tb_isSameYearAsDate:[NSDate date]];
}

- (BOOL)tb_isNextYear
{
    return [self tb_isSameYearAsDate:[NSDate tb_nextWeek]];
}

#pragma mark - Equal
- (BOOL)tb_isEarlierThanDate:(NSDate *)_data
{
    return ([self compare:_data] == NSOrderedAscending);
}

- (BOOL)tb_isLaterThanDate:(NSDate *)_data
{
    return ([self compare:_data] == NSOrderedDescending);
}

- (BOOL)tb_isInFuture
{
    return ([self tb_isLaterThanDate:[NSDate date]]);
}

- (BOOL)tb_isInPast
{
    return ([self tb_isEarlierThanDate:[NSDate date]]);
}

- (BOOL)tb_isWeekend
{
    NSDateComponents *components = [NSDate tb_dateComponentsWithDate:self withCalendarUnit:TB_DATE_COMPONENTS_CASE_WEEK];
    
    return ((components.weekday == 1) || (components.weekday == 7));
}

- (BOOL)tb_isWorkday
{
    return ![self tb_isWeekend];
}

@end
