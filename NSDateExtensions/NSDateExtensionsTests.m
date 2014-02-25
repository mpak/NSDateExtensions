//
//  NSDateExtensionsTests.m
//  NSDateExtensionsTests
//
//  Created by Andrey Fedorov on 25.02.14.
//  Copyright (c) 2014 Andrey Fedorov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+Extensions.h"


@interface NSDateExtensionsTests : XCTestCase

@end

@implementation NSDateExtensionsTests
{
    NSDate *dateSmall, *dateSmallSame, *dateBig, *firstDay, *lastDay, *dateWithTime;
}

- (void)setUp
{
    [super setUp];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YYYY-MM-dd";
    dateSmall = [formatter dateFromString:@"2014-02-25"];
    dateSmallSame = [formatter dateFromString:@"2014-02-25"];
    dateBig = [formatter dateFromString:@"2014-02-28"];

    firstDay = [formatter dateFromString:@"2014-02-01"];
    lastDay = [formatter dateFromString:@"2014-02-28"];

    formatter.dateFormat = @"YYYY-MM-dd HH:mm:ss";
    dateWithTime = [formatter dateFromString:@"2014-02-25 15:12:37"];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testComparison
{
    XCTAssertTrue([dateSmall lessThan:dateBig]);
    XCTAssertTrue([dateSmall lessOrEqual:dateBig]);
    XCTAssertTrue([dateSmall lessOrEqual:dateSmallSame]);
    XCTAssertTrue([dateSmall greaterOrEqual:dateSmallSame]);
    XCTAssertTrue([dateSmall equalTo:dateSmallSame]);

    XCTAssertTrue(![dateSmall greaterThan:dateBig]);
    XCTAssertTrue(![dateSmall greaterOrEqual:dateBig]);
    XCTAssertTrue(![dateSmall equalTo:dateBig]);

    XCTAssertTrue([dateBig greaterOrEqual:dateSmall]);
    XCTAssertTrue([dateBig greaterThan:dateSmall]);

    XCTAssertTrue(![dateBig equalTo:dateSmall]);
    XCTAssertTrue(![dateBig lessThan:dateSmall]);
    XCTAssertTrue(![dateBig lessOrEqual:dateSmall]);
}

- (void)testDays
{
    XCTAssertEqualObjects([dateSmall dateAtFirstDayOfMonth], firstDay);
    XCTAssertEqualObjects([dateSmall dateAtLastDayOfMonth], lastDay);
    XCTAssertEqualObjects([dateWithTime dateWithoutTime], dateSmall);
}

@end
