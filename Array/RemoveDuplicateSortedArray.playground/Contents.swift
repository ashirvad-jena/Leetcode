import UIKit

func removeDuplicates1(_ nums: inout [Int]) -> Int {
    var count = 0
    var fixIndex = 0
    var checkIndex = 1
    for _ in 0 ..< nums.count {
        count += 1
        print(count)
        guard checkIndex < nums.count else { return nums.count }
        if nums[fixIndex] == nums[checkIndex] {
            nums.remove(at: checkIndex)
        } else {
            fixIndex += 1
            checkIndex += 1
        }
    }
    return 0
}

func removeDuplicates2(_ nums: inout [Int]) -> Int {
    if nums.count <= 1 { return nums.count }
    var checkIndex = 1
    var digitIndex = 0
    while checkIndex < nums.count {
        if nums[checkIndex] == nums[digitIndex] {
            checkIndex += 1
        } else {
            digitIndex += 1
            nums[digitIndex] = nums[checkIndex]
        }
        print(nums)
    }
    return digitIndex + 1
}


var mutableArray: [Int] = [0,2,2,3,4,4,6]
//print(mutableArray)
removeDuplicates2(&mutableArray)
//print(mutableArray)
