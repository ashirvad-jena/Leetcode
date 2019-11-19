/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/880/
 
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 Input: 123
 Output: 321
 
 Example 2:
 Input: -123
 Output: -321
 
 Example 3:
 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 */

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        if x == 0 { return 0 }
        var reverseInt = 0
        var multiplier = 1
        if x < 0 {
            multiplier = -1
        }
        var integer = x * multiplier
        while integer > 0 {
            reverseInt = reverseInt * 10 + integer % 10
            integer = integer / 10
        }
        reverseInt = reverseInt * multiplier
        if reverseInt < Int32.min || reverseInt > Int32.max {
            return 0
        }
        return reverseInt
    }
}

let sol = Solution()
sol.reverse(123)
sol.reverse(-123)
sol.reverse(120)
