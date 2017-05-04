//
//  ZHZTestTests.m
//  ZHZTestTests
//
//  Created by zhanghangzhen on 2017/5/4.
//  Copyright © 2017年 xbk. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import "KIFUITestActor+Identifier.h"
#import <KIF/KIFTypist.h>
@interface ZHZTestTests : KIFTestCase

@end
@implementation ZHZTestTests
- (void)beforeAll
{
    //键盘输入延迟（输入太快在烂机器上会出错）
    KIFTypist.keystrokeDelay = 0.5;
}
- (void)afterEach
{
    
}
- (void)testExample {
    //滑动
    [tester swipeViewWithAccessibilityIdentifier:@"tableView" inDirection:KIFSwipeDirectionUp];
    //依次点击cell 1
//    for (int i = 0; i < 6; i+=2) {
//        [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0] inTableViewWithAccessibilityIdentifier:@"tableView"];
//    }
    //点击cell   2
    [tester tapViewWithAccessibilityLabel:@"Section0Row5"];
 
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
