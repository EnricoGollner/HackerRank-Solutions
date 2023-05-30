
import Foundation

/*
 Given an array, A, of N integers, print 's elements in reverse order as a single line of space-separated numbers.

 Example
 A = [1, 2, 3, 4]

 Print 4 3 2 1. Each integer is separated by one space.
 
 */

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

for item in arr.reversed() {
    print("\(item) ", terminator: "")
}
