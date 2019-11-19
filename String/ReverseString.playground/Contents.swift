/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/879/
 
 Write a function that reverses a string. The input string is given as an array of characters char[].
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 You may assume all the characters consist of printable ascii characters.
 
 Example 1:
 Input: ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 
 Example 2:
 Input: ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
 */

import UIKit

class Solution {
    func reverseString(_ s: inout [Character]) {
        guard !s.isEmpty else { return }
        let length = s.count
        var index = 0
        while index < length/2 {
            let temp = s[index]
            s[index] = s[length-index-1]
            s[length-index-1] = temp
            index += 1
        }
    }
}

//var s: [Character] = ["H","a","n","n","a","h"]
var s: [Character] = [":"," ","P","a","n","a","m","a"]
Solution().reverseString(&s)
print(s)
//let expected: [Character] = ["h", "a", "n", "n", "a", "H"]
let expected: [Character] = ["a","m","a","n","a","P"," ",":"]

print(s == expected)
