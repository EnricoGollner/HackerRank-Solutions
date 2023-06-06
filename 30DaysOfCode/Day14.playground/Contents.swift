/*
 Day 14: Scope
 
 Complete the Difference class by writing the following:
 
 A class constructor that takes an array of integers as a parameter and saves it to the __elements instance variable.
 A computeDifference method that finds the maximum absolute difference between any 2 numbers in __elements and stores it in the maximumDifference instance variable.
*/

import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    // Write your code here
    init(a: [Int]) {
        self.elements = a
        self.maximumDifference = 0
    }
    
    public func computeDifference() {
        maximumDifference = elements.reduce(0) { result, currentElement  in
            max(result, elements.map { abs(currentElement - $0) }.max() ?? 0)
        }
    }
} // End of Difference class

let n = 3
let a = [1, 2, 5]

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
