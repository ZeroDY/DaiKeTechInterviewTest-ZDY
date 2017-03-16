//
//  DaiKeTechInterviewTestTests.m
//  DaiKeTechInterviewTestTests
//
//  Created by 周德艺 on 2017/3/16.
//  Copyright © 2017年 周德艺. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "InterviewTest.h"

@interface DaiKeTechInterviewTestTests : XCTestCase

@property (nonatomic, strong) InterviewTest *model;

@end

@implementation DaiKeTechInterviewTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.model = [InterviewTest new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFunc_productArray{
    
    NSArray <NSNumber *> *inputeArray = @[@1, @2, @3, @4];
    NSArray *expectedArray = @[@24, @12, @8, @6];
    NSArray *outputArray = [self.model productArray:inputeArray];
    XCTAssertEqualObjects(expectedArray, outputArray, @"productArray 方法错误！");
}

- (void)testFunc_numberfirst{
    
    NSMutableArray <NSNumber *> *inputeArray = [NSMutableArray arrayWithObjects:@0, @1, @0, @3, @12, nil];
    NSArray *expectedArray = @[@1, @3, @12, @0, @0];
    NSArray *outputArray = [self.model numberfirst:inputeArray];
    XCTAssertEqualObjects(expectedArray, outputArray, @"numberfirst 方法错误！");
}


- (void)testFunc_mySqrt{
    
    int expected = 12;
    long output = [self.model mySqrt:144];
    XCTAssertEqual(expected, output, @"mySqrt 方法错误！");
}

- (void)testFunc_myPow{
    
    double expected = 525.21875;
    double output = [self.model myPow:3.5 andN:5];
    XCTAssertEqual(expected, output, @"myPow 方法错误！");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
