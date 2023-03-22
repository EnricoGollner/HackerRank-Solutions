import Cocoa
/*
 Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.
 
 Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
 */

var arr = [-4, 3, -9, 0, 4, 1]  // Example

func plusMinus(arr: [Int]) -> Void {
    var positives = [Int]()
    var negatives = [Int]()
    var zeros = [Int]()
    
    for i in 0..<arr.count {
        let el = arr[i] // Aux
        if el > 0{
            positives.append(el)
        } else if arr[i] < 0{
            negatives.append(el)
        } else {
            zeros.append(el)
        }
    }
    let positivesRatio = Double(positives.count) / Double(arr.count)
    let negativesRatio = Double(negatives.count) / Double(arr.count)
    let zerosRatio = Double(zeros.count) / Double(arr.count)
    
    print(String(format: "%.6f", positivesRatio))
    print(String(format: "%.6f", negativesRatio))
    print(String(format: "%.6f", zerosRatio))
}

plusMinus(arr: arr)
