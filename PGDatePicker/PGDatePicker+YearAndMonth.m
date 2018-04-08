//
//  PGDatePicker+YearAndMonth.m
//
//  Created by piggybear on 2018/3/18.
//  Copyright © 2018年 piggybear. All rights reserved.
//

#import "PGDatePicker+YearAndMonth.h"
#import "PGDatePickerHeader.h"
#import "PGDatePicker+Logic.h"
#import "PGDatePicker+Common.h"

@implementation PGDatePicker (YearAndMonth)
- (void)yearAndMonth_setupSelectedDate {
    NSString *yearString = [self.pickerView textOfSelectedRowInComponent:0];
    yearString = [yearString componentsSeparatedByString:self.yearString].firstObject;
    
    NSString *monthString = [self.pickerView textOfSelectedRowInComponent:1];
    monthString = [monthString componentsSeparatedByString:self.monthString].firstObject;
    
    self.selectedComponents.year = [yearString integerValue];
    self.selectedComponents.month = [monthString integerValue];
}

- (void)yearAndMonth_setDateWithComponents:(NSDateComponents *)components animated:(BOOL)animated {
    if (components.year > self.maximumComponents.year) {
        components.year = self.maximumComponents.year;
    }else if (components.year < self.minimumComponents.year) {
        components.year = self.minimumComponents.year;
    }
    NSInteger row = components.year - self.minimumComponents.year;
    [self.pickerView selectRow:row inComponent:0 animated:animated];
    {
        NSInteger row = 0;
        NSString *string = [NSString stringWithFormat:@"%ld", components.month];
        BOOL isExist = [self.monthList containsObject:string];
        if (isExist) {
            row = [self.monthList indexOfObject:string];
        }
        [self.pickerView selectRow:row inComponent:1 animated:animated];
    }
}

- (void)yearAndMonth_didSelectWithComponent:(NSInteger)component {
    NSDateComponents *dateComponents = [self.calendar components:self.unitFlags fromDate:[NSDate date]];
    NSString *str = [[self.pickerView textOfSelectedRowInComponent:0] componentsSeparatedByString:self.yearString].firstObject;
    dateComponents.year = [str integerValue];
    if (component == 0) {
        BOOL refresh = [self setMonthListWithComponents:dateComponents refresh:true];
        [self.pickerView reloadComponent:1 refresh:refresh];
    }
    
    
    //斌加//
    if (component == 1) {
                BOOL refresh = [self setDayListWithComponent:component dateComponents:dateComponents refresh:false];
                [self.pickerView reloadComponent:2 refresh:refresh];
            }
    
    
    if ([self.delegate respondsToSelector:@selector(datePicker:didSelectDate:)]) {
        [self.delegate datePicker:self didSelectDate:dateComponents];
    }
    //斌加//
}
@end
