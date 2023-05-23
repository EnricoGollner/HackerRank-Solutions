import Cocoa
// Given a square matrix, calculate the absolute difference between the sums of its diagonals.

var matrix = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftD = 0
    var rightD = 0
    
    for i in 0..<arr.count{
        leftD += arr[i][i]
        rightD += arr[i][arr.count - 1 - i]
    }
    
    return abs(leftD - rightD)
}

let result = diagonalDifference(arr: matrix)
print(result)
