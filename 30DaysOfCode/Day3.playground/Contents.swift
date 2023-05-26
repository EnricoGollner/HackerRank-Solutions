import Foundation

/*
 Task
 Given an integer, n, perform the following conditional actions:

 If n is odd, print Weird
 If n is even and in the inclusive range 2 of  to 5, print Not Weird
 If n is even and in the inclusive range of 6 to 20, print Weird
 If n is even and greater than 20, print Not Weird
 Complete the stub code provided in your editor to print whether or not  is weird.
 
*/


func statementChallange(N: Int) {
    let NisEven = N%2 == 0
    let NisOdd = N%2 != 0
    let range2to5 = 2...5
    let range6to20 = 6...20
    if NisOdd {
        print("Weird")
    } else if NisEven && range2to5.contains(N) {
        print("Not Weird")
    } else if NisEven && range6to20.contains(N) {
        print("Weird")
    } else if NisEven && N > 20 {
        print("Not Weird")
    }
}

statementChallange(N: 3)
