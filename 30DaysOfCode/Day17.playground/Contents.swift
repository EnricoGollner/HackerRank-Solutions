/*
     Day 17 - More Expectations
 
 Write a Calculator class with a single method: int power(int,int). The power method takes two integers, n and p, as parameters and returns the integer result of nˆp. If either n or  is negative, then the method must throw an exception with the message: n and p should be non-negative.
*/

import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError: Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        if n < 0 || p < 0 {
            throw  RangeError.NotInRange("n and p should be non-negative")
        }
        
        return Int(pow(Double(n), Double(p)))
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()

let n = -3
let p = 3

do {
    let ans = try myCalculator.power(n: n, p: p)
    print(ans)
} catch RangeError.NotInRange(let errorMsg) {
    print(errorMsg)
}
