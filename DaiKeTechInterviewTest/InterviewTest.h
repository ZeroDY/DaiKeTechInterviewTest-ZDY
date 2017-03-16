//
//  InterviewTest.h
//  DaiKeTechInterviewTest
//
//  Created by 周德艺 on 2017/3/16.
//  Copyright © 2017年 周德艺. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InterviewTest : NSObject

/**
 1. Product array
 
 Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
 
 @param inputArray an array nums
 @return an array
 */
- (NSArray *)productArray:(NSArray <NSNumber *> *)inputArray;


/**
 2. Number first
 
 Given an array nums, write a function to move all non-zero numbers to the head of it while maintaining the relative order of the non-zero numbers.
 
 @param inputArray an array nums
 @return  an array
 */
- (NSArray *)numberfirst:(NSMutableArray <NSNumber *> *)inputArray;


/**
 4. Simple root square
 
 Implement int sqrt(int x).
 
 @param x a number
 @return sqrt(int x)
 */
- (long)mySqrt:(int)x;



//************************ one hour line ***********************


- (double)myPow:(double)x andN:(int)n;


@end
