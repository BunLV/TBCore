//
//  NSDate+TBCore.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TB_DATE_MINUTE                      60
#define TB_DATE_HOUR                        3600
#define TB_DATE_DAY                         86400
#define TB_DATE_WEEK                        604800
#define TB_DATE_YEAR                        31556926

#define TB_DATE_SECOND_BY_MINUTES(minutes)  TB_DATE_MINUTE * minutes
#define TB_DATE_SECOND_BY_HOUR(hour)        TB_DATE_HOUR * hour
#define TB_DATE_SECOND_BY_DAY(day)          TB_DATE_DAY * day
#define TB_DATE_SECOND_BY_WEEK(week)        TB_DATE_WEEK * week
#define TB_DATE_SECOND_BY_YEAR(year)        TB_DATE_YEAR * year

#define TB_CURRENT_CALENDAR                 [NSCalendar currentCalendar]

#define TB_DATE_COMPONENTS                  (NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit | NSWeekdayOrdinalCalendarUnit)
#define TB_DATE_COMPONENTS_CASE_WEEK        (NSWeekdayCalendarUnit)
#define TB_DATE_COMPONENTS_CASE_MONTH       (NSYearCalendarUnit | NSMonthCalendarUnit)
#define TB_DATE_COMPONENTS_CASE_YEAR        (NSYearCalendarUnit)

@interface NSDate (TBCore)

#pragma mark - Date components
+ (NSDateComponents *)tb_dateComponentsWithDate:(NSDate *)_date;
+ (NSDateComponents *)tb_dateComponentsWithDate:(NSDate *)_date withCalendarUnit:(NSCalendarUnit)_calendarUnit;

#pragma mark - Date Appending
+ (NSDate *)tb_dateByAppendingSeconds:(NSInteger)_second;
+ (NSDate *)tb_dateByAppendingMinutes:(float)_minutes;
+ (NSDate *)tb_dateByAppendingHours:(float)_hour;
+ (NSDate *)tb_dateByAppendingDays:(float)_day;
+ (NSDate *)tb_dateByAppendingWeeks:(float)_week;
+ (NSDate *)tb_dateByAppendingYears:(float)_year;

#pragma mark + Util
// - Day
+ (NSDate *)tb_yesterday;
+ (NSDate *)tb_tomorrow;

// - Week
+ (NSDate *)tb_lastWeek;
+ (NSDate *)tb_nextWeek;

// - Year
+ (NSDate *)tb_lastYear;
+ (NSDate *)tb_nextYear;

#pragma mark - Get
@property (readonly) NSInteger tb_second;
@property (readonly) NSInteger tb_minute;
@property (readonly) NSInteger tb_hour;

@property (readonly) NSInteger tb_nearestHour;

@property (readonly) NSInteger tb_day;
@property (readonly) NSInteger tb_weekOfMonth;
@property (readonly) NSInteger tb_weekOfYear;
@property (readonly) NSInteger tb_month;
@property (readonly) NSInteger tb_year;

@property (readonly) NSInteger tb_nthWeekday; // e.g. 2nd Tuesday of the month == 2
@property (readonly) NSInteger tb_weekday;

// -
- (NSTimeInterval)tb_distanceBySecondToDate:(NSDate *)_date;
- (float)tb_distanceByMinutesToDate:(NSDate *)_date;
- (float)tb_distanceByHoursToDate:(NSDate *)_date;
- (float)tb_distanceByDaysToDate:(NSDate *)_date;

@end
