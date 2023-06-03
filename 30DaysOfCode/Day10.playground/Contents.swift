
import Foundation

/*
 Day 10: Binary Numbers
 
 Print a single base-10 integer that denotes the maximum number of consecutive 1's in the binary representation of n.
 
*/

var num = 13
var sum = 0
var max = 0

while num > 0 {
    if num % 2 == 1 {
        sum += 1
        
        if sum > max {
            max = sum
        }
        
    } else {
        sum = 0
    }
    
    num /= 2
}

print(max)
