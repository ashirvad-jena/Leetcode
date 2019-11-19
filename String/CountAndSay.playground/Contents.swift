/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/886/
 
 The count-and-say sequence is the sequence of integers with the first five terms as following:
 
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.
 
 Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence.
 Note: Each term of the sequence of integers will be represented as a string.
 
 Example 1:
 Input: 1
 Output: "1"
 
 Example 2:
 Input: 4
 Output: "1211"
 */

import UIKit

class Solution {
    func countAndSay(_ n: Int) -> String {
        var num = "1"
        for _ in 1 ..< n {
            var newNum = ""
            var pairArray: [Int] = []
            for char in num {
                if pairArray.isEmpty {
                    pairArray.append(Int(String(char))!)
                    pairArray.append(1)
                } else {
                    if pairArray[0] == Int(String(char))! {
                        pairArray[1] += 1
                    } else {
                        newNum.append(String(pairArray[1]))
                        newNum.append(String(pairArray[0]))
                        pairArray[0] = (Int(String(char))!)
                        pairArray[1] = 1
                    }
                }
            }
            newNum.append(String(pairArray[1]))
            newNum.append(String(pairArray[0]))
            pairArray.removeAll()
            num = newNum
        }
        return num
    }
}

let sol = Solution()
sol.countAndSay(1)
sol.countAndSay(2)
sol.countAndSay(3)
sol.countAndSay(5)

let limit = Int(truncating: NSDecimalNumber(decimal: pow(2, 50)))
for i in 0 ..< limit {
    print(i)
}
