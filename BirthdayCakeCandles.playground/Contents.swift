import Cocoa

/*
 You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.
 
 Example
 candles = [4, 4, 1, 3]
 
 The maximum height candles are  units high. There are 2 of them, so return 2.
 */

let candles = [4, 4, 1, 3]  // return 2

func birthdayCakeCandles(candles: [Int]) -> Int {
    var tallestCandle = candles[0]
    
    for i in 0..<candles.count {
        if candles[i] > tallestCandle {
            tallestCandle = candles[i]
        }
    }
    
    let quantityTallest = candles.filter{ candle in
        candle == tallestCandle
    }
    
    return quantityTallest.count
}

print(birthdayCakeCandles(candles: candles))

