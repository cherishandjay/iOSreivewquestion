//
//  Leetcode.m
//  LeetCode
//
//  Created by Jeremy on 2019/3/21.
//  Copyright © 2019 Jeremy. All rights reserved.
//

#import "Leetcode.h"

@implementation Leetcode

/**
 Given a string, find the length of the longest substring without repeating characters.
 
 Example 1:
 
 Input: "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:
 
 Input: "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:
 
 Input: "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Note that the answer must be a substring, "pwke" is a subsequence and not a substring.*/

/**
 二进制负数
 https://blog.csdn.net/shenhaiwen/article/details/79001039
 */
+(NSString*)getNoRepeatingCharacters:(NSString*)longStrings
{
   //思路：一个一个遍历，用一个变量A 存储，如果没用重复的就放进去，如果有重复的，就把上个A,存到另一个数组B里，A清空，重新开始计数，然后和B中的字符串对比，h
    return @"";
}

//算法题目：

/**
 1.
 给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
 
 你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 */
+ (NSArray*)inputArray:(NSArray*)sourceArray target:(NSInteger)target{
//    NSMutableDictionary* dic = [NSMutableDictionary dictionaryWithCapacity:sourceArray.count];
//    for (int i = 0; i<sourceArray.count; i++) {
//        NSNumber* num = sourceArray[i];
//        [dic setObject:@(i) forKey:num];
//    }
//    for (int i = 0; i<sourceArray.count; i++) {
//        NSInteger num = target - [sourceArray[i] integerValue];
//        if ([dic objectForKey:@(num)]) {//找到了
//            NSNumber* index = [dic objectForKey:@(num)];
//            return @[index, @(i)];
//        };
//    }
    //方法2
    NSMutableDictionary* dic = [NSMutableDictionary dictionaryWithCapacity:sourceArray.count];
    
    for (int i = 0; i<sourceArray.count; i++) {
        NSInteger num = target - [sourceArray[i] integerValue];
        if ([dic objectForKey:@(num)]) {//找到了
            NSNumber* index = [dic objectForKey:@(num)];
            return @[index, @(i)];
        }else{
            [dic setObject:@(i) forKey:sourceArray[i]];
        };
    }
    
    return @[];
}


@end
