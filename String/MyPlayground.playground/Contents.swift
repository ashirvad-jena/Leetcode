/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/882/
 
 Given two strings s and t , write a function to determine if t is an anagram of s.
 
 Example 1:
 Input: s = "anagram", t = "nagaram"
 Output: true
 
 Example 2:
 Input: s = "rat", t = "car"
 Output: false
 
 Note:
 You may assume the string contains only lowercase alphabets.
 
 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
 */

import UIKit

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var dict: [Character: Int] = [:]
        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict[char] = dict[char]! + 1
            }
        }
        for char in t {
            if dict[char] == nil {
                return false
            } else {
                if dict[char]! > 1 {
                    dict[char] = dict[char]! - 1
                } else {
                    dict.removeValue(forKey: char)
                }
            }
        }
        return true
    }
}

let sol = Solution()
sol.isAnagram("anagram", "nagaram")
sol.isAnagram("rat", "car")
sol.isAnagram("ab", "a")
