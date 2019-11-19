import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    var i = 0
    var j = i + 1
//    while i+j < 2*prices.count {
//        
//        print(i,j)
//        if prices[i] < prices[j] {
//            print(prices[i], prices[j])
//            i = j + 1
//            j += 1
//        }
//    }
    
    
    
    for i in 0 ..< prices.count-1 {
        for j in i+1 ..< prices.count {
            print(prices[i], prices[j])
        }
    }
    return 0
}

let prices = [10, 15, 20, 25, 30, 35]
maxProfit(prices)
