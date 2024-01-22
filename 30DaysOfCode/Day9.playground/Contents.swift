
import Foundation

/*
 Today, we are learning about an algorithmic concept called recursion. Check out the Tutorial tab for learning materials and an instructional video.
 
 Function Description
 Complete the factorial function in the editor below. Be sure to use recursion.

 factorial has the following paramter:

 int n: an integer
 Returns

 int: the factorial of N
 Note: If you fail to use recursion or fail to name your recursive function factorial or Factorial, you will get a score of 0.
 
*/

func factorial(n: Int) -> Int {
    if n < 2 {
        return 1
    }
    
    return factorial(n: n - 1) * n
}

print(factorial(n: 4))
