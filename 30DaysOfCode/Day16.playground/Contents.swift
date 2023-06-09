/*
 Day 16: Exceptions - String to Integer
 
 Read a string, S, and print its integer value; if S cannot be converted to an integer, print Bad String.

 Note: You must use the String-to-Integer and exception handling constructs built into your submission language. If you attempt to use loops/conditional statements, you will get a  score.
*/

import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(inputString: String) throws -> Int {
    guard let int = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    
    return int
}

/*
 * Read the input
 */
let inputString = "za"

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
