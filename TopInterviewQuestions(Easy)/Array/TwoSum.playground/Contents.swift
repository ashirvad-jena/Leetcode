/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/546/
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

import UIKit

class Solution {
    func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
        var indices: [Int] = []
        for i in 0 ..< nums.count - 1 {
            indices.append(i)
            for j in i+1 ..< nums.count {
                print(i,j, indices)
                if nums[j] + nums[i] == target {
                    indices.append(j)
                    return indices
                }
            }
            indices.removeAll()
        }
        return indices
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var counter = 0
        while counter < nums.count {
            if dict[target-nums[counter]] != nil {
                return [dict[target-nums[counter]]!, counter]
            } else {
                dict[nums[counter]] = counter
            }
            counter += 1
        }
        return []
    }
}

let nums = [2,7,5,11,15, 5]
let target = 10
let sol = Solution().twoSum(nums, target)
print(sol)
