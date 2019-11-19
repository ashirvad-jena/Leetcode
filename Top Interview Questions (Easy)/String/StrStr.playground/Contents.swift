/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/885/
 
 Implement strStr().
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 Example 1:
 Input: haystack = "hello", needle = "ll"
 Output: 2
 
 Example 2:
 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 
 Clarification:
 What should we return when needle is an empty string? This is a great question to ask during an interview.
 For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
 
 */

import UIKit

func strStr(_ haystack: String, _ needle: String) -> Int {
    guard !needle.isEmpty else { return 0 }
    guard needle.count <= haystack.count else { return -1 }
    var firstIndex = -1
    var nextIndex = -1
    var hayIndex = 0
    var needleIndex = 0
    let firstChar = needle.first!
    while hayIndex < haystack.count {
        let hayChar = haystack[haystack.index(haystack.startIndex, offsetBy: hayIndex)]
        let needleChar = needle[needle.index(needle.startIndex, offsetBy: needleIndex)]
        if hayChar != needleChar && firstIndex == -1 {
            hayIndex += 1
            continue
        }
        
    }
    
    return firstIndex
}

//let index = strStr("loolloolol", "loolol")
//let index = strStr("hello", "ll")
let index = strStr("mississippi", "issip")
print(index)
