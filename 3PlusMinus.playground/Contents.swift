import Cocoa
/*
 Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.
 
 Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
 */

var arr = [-4, 3, -9, 0, 4, 1]  // Example

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    let size = arr.count
    
    var positives = [Int]()
    var zeros = [Int]()
    var negatives = [Int]()
    
    for i in 0..<size{
        if arr[i] > 0{
            positives.append(arr[i])
        } else if arr[i] == 0{
            zeros.append(arr[i])
        } else{
            negatives.append(arr[i])
        }
    }
    
    let positivesRatio = (Double(positives.count) / Double(size))
    let negativesRatio = Double(negatives.count) / Double(size)
    let zerosRatio = Double(zeros.count) / Double(size)
    
    print(String(format: "%.6f", positivesRatio))  // Formating to 6 places after the decimal.
    print(String(format: "%.6f", negativesRatio))
    print(String(format: "%.6f", zerosRatio))
}

plusMinus(arr: arr)
