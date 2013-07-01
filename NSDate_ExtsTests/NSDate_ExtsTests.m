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

@end
