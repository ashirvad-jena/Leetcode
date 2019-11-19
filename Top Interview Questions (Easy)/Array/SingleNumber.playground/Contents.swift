/* https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
 Note: Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 Example 1:
 Input: [2,2,1]
 Output: 1
 
 Example 2:
 Input: [4,1,2,1,2]
 Output: 4
 */


import UIKit

func singleNumber1(_ nums: [Int]) -> Int {
    var dict: [Int: Bool] = [:]
    for i in 0 ..< nums.count {
        if dict[nums[i]] != nil {
            dict.removeValue(forKey: nums[i])
        } else {
            dict[nums[i]] = true
        }
    }
    
    return dict.keys.first!
}

func singleNumber(_ nums: [Int]) -> Int {
    var unique = nums[0]
    for i in 1 ..< nums.count {
        unique = unique ^ nums[i]
    }
    return unique
}

let nums = [1,4,1,3,2,2,4]
singleNumber1(nums)

singleNumber(nums)


1^3

