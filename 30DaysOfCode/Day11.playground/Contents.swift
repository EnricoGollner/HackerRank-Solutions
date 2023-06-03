
import Foundation

/*
 Day 11: 2D Arrays
 
 Today, we are building on our knowledge of arrays by adding another dimension.
 
 Task:
 Calculate the hourglass sum for every hourglass in A, then print the maximum hourglass sum.
*/

let matrix = [[1, 1, 1, 0, 0, 0],
              [0, 1, 0, 0, 0, 0],
              [1, 1, 1, 0, 0, 0],
              [0, 0, 2, 4, 4, 0],
              [0, 0, 0, 2, 0, 0],
              [0, 0, 1, 2, 4, 0]]


func findSum(_ matrix: [[Int]], line: Int, col: Int) -> Int {
    let sum = matrix[line][col] + matrix[line][col + 1] + matrix[line][col + 2]
                                   + matrix[line + 1][col + 1] +
            matrix[line + 2][col] + matrix[line + 2][col + 1] + matrix[line + 2][col+2]
    
    return sum
}

func findMaxSum(matrix: [[Int]]) -> Int {
    var maxSum = Int.min
    
    for line in 0...3 {
        for col in 0...3 {
            maxSum = max(maxSum, findSum(matrix, line: line, col: col))
        }
    }
    
    return maxSum
}

findMaxSum(matrix: matrix)
