/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/
 Given two arrays, write a function to compute their intersection.
 
 Example 1:
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2,2]
 
 Example 2:
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [4,9]
 
 Note:
 Each element in the result should appear as many times as it shows in both arrays.
 The result can be in any order.
 
 Follow up:
 What if the given array is already sorted? How would you optimize your algorithm?
 What if nums1's size is small compared to nums2's size? Which algorithm is better?
 What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
 */

import UIKit

func intersect1(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var intersectArray: [Int] = []
    var minArray = nums1.count <= nums2.count ? nums1 : nums2
    var maxArray = nums1.count > nums2.count ? nums1 : nums2
    for i in 0 ..< minArray.count {
        for j in intersectArray.count ..< maxArray.count {
            if minArray[i] == maxArray[j] {
                intersectArray.append(minArray[i])
                let temp = maxArray[intersectArray.count-1]
                maxArray[intersectArray.count-1] = maxArray[j]
                maxArray[j] = temp
                break
            }
        }
    }
    
    return intersectArray
}

func intersect2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var intersectArray: [Int] = []
    var minArray: [Int] = []
    var maxArray: [Int] = []
    if nums1.count <= nums2.count {
        minArray = nums1.sorted()
        maxArray = nums2.sorted()
    } else {
        minArray = nums2.sorted()
        maxArray = nums1.sorted()
    }
    var counter1 = 0
    var counter2 = 0
    while counter1 < minArray.count && counter2 < maxArray.count {
        if minArray[counter1] < maxArray[counter2] {
            counter1 += 1
        } else if minArray[counter1] == maxArray[counter2] {
            intersectArray.append(minArray[counter1])
            counter1 += 1
            counter2 += 1
        } else {
            counter2 += 1
        }
    }
    
    return intersectArray
}

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var intersectArray: [Int] = []
    var minArray: [Int] = []
    var maxArray: [Int] = []
    if nums1.count <= nums2.count {
        minArray = nums1
        maxArray = nums2
    } else {
        minArray = nums2
        maxArray = nums1
    }
    var dict: [Int: Int] = [:]
    for num in maxArray {
        if dict[num] != nil {
            dict[num] = dict[num]! + 1
        } else {
            dict[num] = 1
        }
    }
    for num in minArray {
        if dict[num] != nil {
            intersectArray.append(num)
            let count = dict[num]!
            if count == 1 {
                dict.removeValue(forKey: num)
            } else {
                dict[num] = dict[num]! - 1
            }
            
        }
    }
    
    return intersectArray
}



let nums1 = [78,44,77,48]
let nums2 = [77,44,61,48]

//let nums1 = [1,2,1]
//let nums2 = [1]

let arr = intersect(nums1, nums2)
print(arr)


