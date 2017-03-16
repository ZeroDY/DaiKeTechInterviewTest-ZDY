//
//  InterviewTest.m
//  DaiKeTechInterviewTest
//
//  Created by 周德艺 on 2017/3/16.
//  Copyright © 2017年 周德艺. All rights reserved.
//

#import "InterviewTest.h"

@implementation InterviewTest


/**
 1. Product array
 
 Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
 
 @param inputArray an array nums
 @return an array
 */
- (NSArray *)productArray:(NSArray <NSNumber *> *)inputArray{
    
    NSMutableArray <NSNumber *> *beforProductArray = [NSMutableArray arrayWithObject:@1];
    
    for (int i = 1; i < inputArray.count; i++) {
        [beforProductArray addObject: @(beforProductArray[i - 1].intValue * inputArray[i - 1].intValue)];
    }
    
    int afterProduct = 1;
    for (NSInteger i = inputArray.count - 1; i >= 0; i--) {
        beforProductArray[i] = @(beforProductArray[i].intValue * afterProduct);
        afterProduct = afterProduct * inputArray[i].intValue;
    }
    
    return beforProductArray;
}


/**
 2. Number first
 
 Given an array nums, write a function to move all non-zero numbers to the head of it while maintaining the relative order of the non-zero numbers.
 
 @param inputArray an array nums
 @return  an array
 */
- (NSArray *)numberfirst:(NSMutableArray <NSNumber *> *)inputArray{
    
    int zeroNum = 0;
    int i = 0;
    while (i < inputArray.count - zeroNum) {
        if (inputArray[i].intValue == 0) {
            [inputArray removeObjectAtIndex:i];
            [inputArray addObject:@0];
            zeroNum ++;
        }else{
            i ++;
        }
    }
    
    return inputArray;
}

/**
 4. Simple root square
 
 Implement int sqrt(int x).
 
 @param x a number
 @return sqrt(int x)
 */
- (long)mySqrt:(int)x{
    long i = 0;
    long j = x / 2 + 1;
    while (i <= j)
    {
        long half = (i + j) / 2;
        
        long square = half * half;
        if (square == x) {
            return half;
        }
        else if (square < x){
            i = half + 1;
        }
        else{
            j = half - 1;
        }
    }
    return j;
}


//************************ one hour line ***********************



//5.Power
- (double)myPow:(double)x andN:(int)n{
    if (n == 0) {
        return 1.0;
    }
    double half = [self myPow:x andN:n/2];
    if (n % 2 == 0){
        return half * half;
    }
    else if (n > 0){
        return half * half * x;
    }
    else{
        return half / x * half;
    }
}

@end
