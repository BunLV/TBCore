//
//  NSDate+TBCore.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSDate+TBCore.h"

@implementation NSDate (TBCore)

#pragma mark - Date components
+ (NSDateComponents *)tb_dateComponentsWithDate:(NSDate *)_date
{
    return [NSDate tb_dateComponentsWithDate:_date withCalendarUnit:TB_DATE_COMPONENTS];
}

+ (NSDateComponents *)tb_dateComponentsWithDate:(NSDate *)_date withCalendarUnit:(NSCalendarUnit)_calendarUnit
{
    return [TB_CURRENT_CALENDAR components:_calendarUnit fromDate:_date];
}

#pragma mark - Date Appending
+ (NSDate *)tb_dateByAppendingSeconds:(NSInteger)_seconds
{
    NSTimeInterval timeInterval = [[NSDate date] timeIntervalSinceReferenceDate] + _seconds;
    NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:timeInterval];
    
    return newDate;
}

+ (NSDate *)tb_dateByAppendingMinutes:(float)_minutes
{
    return [NSDate tb_dateByAppendingSeconds:TB_DATE_SECOND_BY_MINUTES(_minutes)];
}

+ (NSDate *)tb_dateByAppendingHours:(float)_hour
{
    return [NSDate tb_dateByAppendingSeconds:TB_DATE_SECOND_BY_HOUR(_hour)];
}

+ (NSDate *)tb_dateByAppendingDays:(float)_day
{
    return [NSDate tb_dateByAppendingSeconds:TB_DATE_SECOND_BY_DAY(_day)];
}

+ (NSDate *)tb_dateByAppendingWeeks:(float)_week
{
    return [NSDate tb_dateByAppendingSeconds:TB_DATE_SECOND_BY_WEEK(_week)];
}

+ (NSDate *)tb_dateByAppendingYears:(float)_year
{
    return [NSDate tb_dateByAppendingSeconds:TB_DATE_SECOND_BY_YEAR(_year)];
}

#pragma mark + Util
// - Day
+ (NSDate *)tb_yesterday
{
    return [NSDate tb_dateByAppendingDays:-1];
}

+ (NSDate *)tb_tomorrow
{
    return [NSDate tb_dateByAppendingDays:+1];
}

// - Week
+ (NSDate *)tb_lastWeek
{
    return [NSDate tb_dateByAppendingWeeks:-1];
}

+ (NSDate *)tb_nextWeek
{
    return [NSDate tb_dateByAppendingWeeks:+1];
}

// - Year
+ (NSDate *)tb_lastYear
{
    return [NSDate tb_dateByAppendingYears:-1];
}

+ (NSDate *)tb_nextYear
{
    return [NSDate tb_dateByAppendingYears:+1];
}

#pragma mark - Get
// -
- (NSInteger)tb_second
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.second;
}

- (NSInteger)tb_minute
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.minute;
}

- (NSInteger)tb_hour
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.hour;
}

- (NSInteger)tb_nearestHour
{
    NSDate *_date = [NSDate tb_dateByAppendingMinutes:+30];
    
    NSDateComponents *componentsDate = [NSDate tb_dateComponentsWithDate:_date];
    
    return componentsDate.second;
}

- (NSInteger)tb_day
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.day;
}

- (NSInteger)tb_weekOfMonth
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.weekOfMonth;
}

- (NSInteger)tb_weekOfYear
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.weekOfYear;
}

- (NSInteger)tb_month
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.month;
}

- (NSInteger)tb_year
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.year;
}

- (NSInteger)tb_nthWeekday
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.weekdayOrdinal;
}

- (NSInteger)tb_weekday
{
    NSDateComponents *componentsSelf = [NSDate tb_dateComponentsWithDate:self];
    
    return componentsSelf.weekday;
}

// -
- (NSTimeInterval)tb_distanceBySecondToDate:(NSDate *)_date
{
    return [self timeIntervalSinceDate:_date];
}

- (float)tb_distanceByMinutesToDate:(NSDate *)_date
{
    NSTimeInterval second = [self tb_distanceBySecondToDate:_date];
    
    return second / TB_DATE_MINUTE;
}

- (float)tb_distanceByHoursToDate:(NSDate *)_date
{
    NSTimeInterval second = [self tb_distanceBySecondToDate:_date];
    
    return second / TB_DATE_HOUR;
}

- (float)tb_distanceByDaysToDate:(NSDate *)_date
{
    NSTimeInterval second = [self tb_distanceBySecondToDate:_date];
    
    return second / TB_DATE_DAY;
}

@end
