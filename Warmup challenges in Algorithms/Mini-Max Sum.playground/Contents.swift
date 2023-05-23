import Cocoa

/*
 Mini-Max Sum
 
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
 */

let arr = [1, 3, 5, 7, 9]  // 16 24

func miniMaxSum(arr: [Int]) -> Void {
    var minNum = arr[0]
    var maxNum = arr[0]
    var sum = 0

    for i in 0..<arr.count {
        
        if arr[i] < minNum {  // numero atual é maior do que o inicial...
            minNum = arr[i]
        }
        
        if arr[i] > maxNum {
            maxNum = arr[i]
        }
        sum += arr[i]
    }
    
    let minSum = sum - maxNum  // A miníma soma é a soma de todos os num - o número máx
    let maxSum = sum - minNum
    
    print("\(minSum) \(maxSum)")
}

miniMaxSum(arr: arr)

