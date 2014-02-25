# NSDate+Extensions

## Comparison
    - (BOOL)equalTo:(NSDate *)date;
    - (BOOL)lessThan:(NSDate *)date;
    - (BOOL)lessOrEqual:(NSDate *)date;
    - (BOOL)greaterThan:(NSDate *)date;
    - (BOOL)greaterOrEqual:(NSDate *)date;

## Days
    - (NSDate *)dateWithoutTime;
    - (NSDate *)dateAtFirstDayOfMonth;
    - (NSDate *)dateAtLastDayOfMonth;
