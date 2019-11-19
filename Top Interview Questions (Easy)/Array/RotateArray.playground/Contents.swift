/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/
 Given an array, rotate the array to the right by k steps, where k is non-negative.
 
 Example 1:
 Input: [1,2,3,4,5,6,7] and k = 3
 Output: [5,6,7,1,2,3,4]
 
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 
 Example 2:
 Input: [-1,-100,3,99] and k = 2
 Output: [3,99,-1,-100]
 
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 
 Note:Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 Could you do it in-place with O(1) extra space?
 */

import UIKit

func rotate1(_ nums: inout [Int], _ k: Int) {
    if k < 1 || nums.count == 0{
        return
    }
    let k = k % nums.count
    nums = Array(nums[nums.count-k ..< nums.count] + nums[0 ..< nums.count-k])
}

func rotate(_ nums: inout [Int], _ k: Int) {
    var rotatedArray: [Int] = []
    let length = nums.count
    let noOfRotation = k % length
    if noOfRotation == 0 { return }
    for i in length - noOfRotation ..< 2 * length - noOfRotation {
        let neutralizedIndex = i % length
        rotatedArray.append(nums[neutralizedIndex])
    }
    nums = rotatedArray
}

var nums = [1,2]
rotate1(&nums, 0)
print(nums)

