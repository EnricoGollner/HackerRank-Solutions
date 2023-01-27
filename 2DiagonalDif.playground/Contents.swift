import Cocoa
// Given a square matrix, calculate the absolute difference between the sums of its diagonals.

var matrix = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftDiagonal = 0
    var rightDiagonal = 0
    
    for l in 0..<arr.count{
        leftDiagonal += arr[l][l]
        rightDiagonal += arr[l][arr.count - l - 1]
    }
    
    return abs(leftDiagonal - rightDiagonal)
}

diagonalDifference(arr: matrix)
