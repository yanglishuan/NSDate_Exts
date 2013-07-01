//
//  NSDate_ExtsTests.m
//  NSDate_ExtsTests
//
//  Created by yls on 13-7-1.
//  Copyright (c) 2013年 yls. All rights reserved.
//

#import "NSDate_ExtsTests.h"
#import "NSDate+Exts.h"

@implementation NSDate_ExtsTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testNSDate
{
    NSDate *today = [NSDate date];

    NSLog(@"today'year is %d", [today year]);
    NSLog(@"today'month is %d", [today month]);
    NSLog(@"today'day is %d", [today day]);
    NSLog(@"today'hour is %d", [today hour]);
    NSLog(@"today'minute is %d", [today minute]);
    NSLog(@"today'second is %d", [today second]);
}

- (void)testNSDateDateByAdd
{
    NSDate *today = [NSDate date];

    NSString *dateStr = [today string];
    NSLog(@"today is %@", dateStr);

    NSDate *tomorrow = [today dateByAddingDays:1];
    NSLog(@"tomorrow is %@", tomorrow);

    NSDate *yestday = [today dateByAddingDays:-1];
    NSLog(@"yestday is %@", yestday);
}

- (void)testCompare
{
    NSDate *date1 = [NSDate dateWithString:@"2013-06-30 07:30:04"];
    NSDate *date2 = [NSDate dateWithString:@"2013-07-01 08:30:04"];
    NSDate *date3 = [date1 dateByAddingHours:-1];
    NSDate *date4 = date1;

    NSLog(@"date1 = %@", date1);
    NSLog(@"date2 = %@", date2);
    NSLog(@"date3 = %@", date3);
    NSLog(@"date4 = %@", date4);

    NSLog(@"--------- 正常比较 ---------");
    NSComparisonResult rc1 = [date1 compare:date2 ignore:NSDateIgnoreNone];
    switch (rc1) {
        case NSOrderedAscending:
        {
            NSLog(@"%@ is later than %@", date2, date1);
        }
            break;
        case NSOrderedDescending:
        {
            NSLog(@"%@ is later than %@", date1, date2);
        }
            break;
        case NSOrderedSame:
        {
            NSLog(@"%@ is equal to %@", date1, date2);
        }
            break;
        default:
            break;
    }

    NSLog(@"--------- 忽略月份 ---------");
    rc1 = [date1 compare:date2 ignore:NSDateIgnoreMonth];
    switch (rc1) {
        case NSOrderedAscending:
        {
            NSLog(@"%@ is later than %@", date2, date1);
        }
            break;
        case NSOrderedDescending:
        {
            NSLog(@"%@ is later than %@", date1, date2);
        }
            break;
        case NSOrderedSame:
        {
            NSLog(@"%@ is equal to %@", date1, date2);
        }
            break;
        default:
            break;
    }

    NSLog(@"--------- 忽略月份、日 ---------");
    rc1 = [date1 compare:date2 ignore:NSDateIgnoreMonth | NSDateIgnoreDay];
    switch (rc1) {
        case NSOrderedAscending:
        {
            NSLog(@"%@ is later than %@", date2, date1);
        }
            break;
        case NSOrderedDescending:
        {
            NSLog(@"%@ is later than %@", date1, date2);
        }
            break;
        case NSOrderedSame:
        {
            NSLog(@"%@ is equal to %@", date1, date2);
        }
            break;
        default:
            break;
    }

    NSLog(@"--------- 忽略月份、日、小时 ---------");
    rc1 = [date1 compare:date2 ignore:NSDateIgnoreMonth | NSDateIgnoreDay | NSDateIgnoreHour];
    switch (rc1) {
        case NSOrderedAscending:
        {
            NSLog(@"%@ is later than %@", date2, date1);
        }
            break;
        case NSOrderedDescending:
        {
            NSLog(@"%@ is later than %@", date1, date2);
        }
            break;
        case NSOrderedSame:
        {
            NSLog(@"%@ is equal to %@", date1, date2);
        }
            break;
        default:
            break;
    }
}


@end
