//
// Created by Andrey Fedorov on 25.02.14.
// Copyright (c) 2014 Andrey Fedorov. All rights reserved.
//

// VERSION 1.0


@interface NSDate (Extensions)

- (BOOL)equalTo:(NSDate *)date;
- (BOOL)lessThan:(NSDate *)date;
- (BOOL)lessOrEqual:(NSDate *)date;
- (BOOL)greaterThan:(NSDate *)date;
- (BOOL)greaterOrEqual:(NSDate *)date;

- (NSDate *)dateWithoutTime;
- (NSDate *)dateAtFirstDayOfMonth;
- (NSDate *)dateAtLastDayOfMonth;

@end
