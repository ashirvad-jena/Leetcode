/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/881/
 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
 
 Examples:

 s = "leetcode"
 return 0.
 
 s = "loveleetcode",
 return 2.
 
 Note: You may assume the string contain only lowercase letters.
 */

import UIKit

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var ans = -1
        var dict: [Character: Int] = [:]
        for char in s {
            if dict[char] != nil {
                dict[char] = dict[char]! + 1
            } else {
                dict[char] = 1
            }
            if dict.count == 27 {
                return ans
            }
        }
        var counter = 0
        for char in s {
            if dict[char]! == 1 {
                ans = counter
                break
            }
            counter += 1
        }
        return ans
    }
}

let s = "itwqbtcdprfsuprkrjkausiterybzncbmdvkgljxuekizvaivszowqtmrttiihervpncztuoljftlxybpgwnjb"
let sol = Solution().firstUniqChar(s)
print(sol)
Character("b").asciiValue! - Character("a").asciiValue!
