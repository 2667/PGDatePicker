//
//  ViewController.m
//  Demo
//
//  Created by piggybear on 2017/8/8.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "ViewController.h"
#import "PGDatePickManager.h"

@interface ViewController ()<PGDatePickerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 年份
 */
- (IBAction)yearHandler:(UIButton *)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    datePickManager.style = PGDatePickManagerStyle2;
    datePickManager.isShadeBackgroud = true;
    
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.isHiddenMiddleText = false;
    datePicker.delegate = self;
    datePicker.datePickerType = PGPickerViewType3;
    datePicker.datePickerMode = PGDatePickerModeYear;
    [self presentViewController:datePickManager animated:false completion:nil];
    

//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"yyyy";
//
//    datePicker.minimumDate = [dateFormatter dateFromString: @"2019"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"2029"];
//
//    NSDate *date = [dateFormatter dateFromString: @"2019"];
//    [datePicker setDate:date animated:true];
}

/**
 年月
 */
- (IBAction)yearAndMonthHandler:(id)sender {
//    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
//    //PGDatePickManagerStyle1取消和确定按键在上面,view贴近屏幕底部,
////    PGDatePickManagerStyle3取消和确定按键在下面,view在屏幕中间,
//    datePickManager.style = PGDatePickManagerStyle2;
//    datePickManager.isShadeBackgroud = true;

    PGDatePicker *datePicker = [[PGDatePicker alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 300)];
//    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    //中间年月日的分割线样式,type1是连起来的.type2是分开的四条线
    datePicker.datePickerType = PGPickerViewType1;
    datePicker.datePickerMode = PGDatePickerModeYearAndMonth;
//    [self presentViewController:datePickManager animated:false completion:nil];
//    只显示中间的文字，设置isHiddenMiddleText为false即可，默认是true
    datePicker.isHiddenMiddleText = true;
    
    
    [self.view addSubview:datePicker];
    datePicker.backgroundColor = [UIColor redColor];
    
    
    
    

//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"yyyy-MM";
    
//    datePicker.minimumDate = [dateFormatter dateFromString: @"2018-01"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"2020-10"];
    
//    NSDate *date = [dateFormatter dateFromString: @"2019-08"];
//    [datePicker setDate:date animated:false];
}

/**
 年月日
 */
- (IBAction)dateHandler:(id)sender {
//    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
//    datePickManager.isShadeBackgroud = true;

PGDatePicker *datePicker = [[PGDatePicker alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 300)];
//    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerType = PGPickerViewType1;
    datePicker.isHiddenMiddleText = true;
    datePicker.datePickerMode = PGDatePickerModeDate;
//    [self presentViewController:datePickManager animated:false completion:nil];
    
    [self.view addSubview:datePicker];
    datePicker.backgroundColor = [UIColor redColor];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"yyyy-MM-dd";
    
//    datePicker.minimumDate = [dateFormatter dateFromString: @"2018-02-18"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"2020-01-18"];
    
//    NSDate *date = [dateFormatter dateFromString: @"2019-01-18"];
//    [datePicker setDate:date animated:true];
}

/**
 年月日时
 */
- (IBAction)dateHourHandler:(UIButton *)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    datePickManager.isShadeBackgroud = true;
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerMode = PGDatePickerModeDateHour;
    [self presentViewController:datePickManager animated:false completion:nil];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"yyyy-MM-dd HH";
//
//    datePicker.minimumDate = [dateFormatter dateFromString: @"2018-02-01 05"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"2028-02-01 05"];
    
//    NSDate *date = [dateFormatter dateFromString: @"2020-02-01 05"];
//    [datePicker setDate:date animated: true];
}

/**
 年月日时分
 */
- (IBAction)dateHourMinuteHandler:(UIButton *)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    datePickManager.isShadeBackgroud = true;
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerType = PGPickerViewType2;
    datePicker.datePickerMode = PGDatePickerModeDateHourMinute;
    [self presentViewController:datePickManager animated:false completion:nil];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm";
    
//    datePicker.minimumDate = [dateFormatter dateFromString: @"2018-02-01 05:04"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"2028-02-01 05:04"];
    
//    NSDate *date = [dateFormatter dateFromString: @"2020-02-01 05:04"];
//    [datePicker setDate:date animated: true];
}

/**
 年月日时分秒
 */
- (IBAction)dateHourMinuteSecondHandler:(UIButton *)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerType = PGPickerViewType3;
    datePicker.datePickerMode = PGDatePickerModeDateHourMinuteSecond;
    [self presentViewController:datePickManager animated:false completion:nil];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
//    datePicker.minimumDate = [dateFormatter dateFromString: @"2018-02-01 05:04:23"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"2028-02-01 05:04:23"];
    
//    NSDate *date = [dateFormatter dateFromString: @"2020-02-01 05:04:23"];
//    [datePicker setDate:date animated: true];
}

/**
 时分
 */
- (IBAction)timeHandler:(id)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerMode = PGDatePickerModeTime;
    [self presentViewController:datePickManager animated:false completion:nil];

//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"HH:mm";
//
//    datePicker.minimumDate = [dateFormatter dateFromString: @"10:11"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"23:11"];
//
//    NSDate *date = [dateFormatter dateFromString: @"20:11"];
//    [datePicker setDate:date animated:false];
}

/**
 时分秒
 */
- (IBAction)timeAndSecondHandler:(id)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerMode = PGDatePickerModeTimeAndSecond;
    [self presentViewController:datePickManager animated:false completion:nil];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"HH:mm:ss";
//
//    datePicker.minimumDate = [dateFormatter dateFromString: @"10:11:10"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"23:11:20"];
//
//    NSDate *date = [dateFormatter dateFromString: @"20:11:15"];
//    [datePicker setDate:date animated:false];
}

/**
 分秒
 */
- (IBAction)minuteAndSecondHandler:(id)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerMode = PGDatePickerModeMinuteAndSecond;
    [self presentViewController:datePickManager animated:false completion:nil];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    dateFormatter.dateFormat = @"mm:ss";
//
//    datePicker.minimumDate = [dateFormatter dateFromString: @"05:10"];
//    datePicker.maximumDate = [dateFormatter dateFromString: @"23:20"];
//
//    NSDate *date = [dateFormatter dateFromString: @"11:15"];
//    [datePicker setDate:date animated:false];
}

/**
 月日周 时分
 */
- (IBAction)dateAndTimeHandler:(id)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.isHiddenMiddleText = false;
    datePicker.delegate = self;
    datePicker.datePickerMode = PGDatePickerModeDateAndTime;
    [self presentViewController:datePickManager animated:false completion:nil];
}

/**
 显示标题
 */
- (IBAction)titleHandler:(UIButton *)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePickManager.titleLabel.text = @"PGDatePicker";
    datePicker.datePickerMode = PGDatePickerModeDate;
    [self presentViewController:datePickManager animated:false completion:nil];
}

/**
 设置样式
 */
- (IBAction)styleHandler:(id)sender {
    PGDatePickManager *datePickManager = [[PGDatePickManager alloc]init];
    PGDatePicker *datePicker = datePickManager.datePicker;
    datePicker.delegate = self;
    datePicker.datePickerMode = PGDatePickerModeDate;
    [self presentViewController:datePickManager animated:false completion:nil];
    
    datePickManager.titleLabel.text = @"PGDatePicker";
    //设置半透明的背景颜色
    datePickManager.isShadeBackgroud = true;
    //设置头部的背景颜色
    datePickManager.headerViewBackgroundColor = [UIColor orangeColor];
    //设置线条的颜色
    datePicker.lineBackgroundColor = [UIColor redColor];
    //设置选中行的字体颜色
    datePicker.textColorOfSelectedRow = [UIColor redColor];
    //设置未选中行的字体颜色
    datePicker.textColorOfOtherRow = [UIColor blackColor];
    //设置取消按钮的字体颜色
    datePickManager.cancelButtonTextColor = [UIColor blackColor];
    //设置取消按钮的字
    datePickManager.cancelButtonText = @"Cancel";
    //设置取消按钮的字体大小
    datePickManager.cancelButtonFont = [UIFont boldSystemFontOfSize:17];
    
    //设置确定按钮的字体颜色
    datePickManager.confirmButtonTextColor = [UIColor redColor];
    //设置确定按钮的字
    datePickManager.confirmButtonText = @"Sure";
    //设置确定按钮的字体大小
    datePickManager.confirmButtonFont = [UIFont boldSystemFontOfSize:17];
}

#pragma PGDatePickerDelegate
- (void)datePicker:(PGDatePicker *)datePicker didSelectDate:(NSDateComponents *)dateComponents {
    
    _selectedDateTextfiled.text = [NSString stringWithFormat:@"%ld年%ld月%ld日%ld时%ld分%ld秒",(long)dateComponents.year ,(long)dateComponents.month,(long)dateComponents.day,(long)dateComponents.hour,(long)dateComponents.minute,(long)dateComponents.second];
    NSLog(@"dateComponents = %@", dateComponents);
}

@end
