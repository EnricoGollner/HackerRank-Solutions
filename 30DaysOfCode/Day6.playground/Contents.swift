
import Foundation

/*
 Given a string, S, of length N that is indexed from 0 to N - 1, print its even-indexed and odd-indexed characters as 2 space-separated strings on a single line (see the Sample below for more detail).
 
 Note: 0 is considered to be an even index.
 
 Example:
 
 s = adbecf
 
 Print abc def
 
 */

let s = "adbecf"

func printEvenOdd(string: String) {
    let arrS = Array(string)
    
    var even = ""
    var odd = ""
    
    for i in 0..<arrS.count {
        if i % 2 == 0 {
            even += String(arrS[i])
        } else {
            odd += String(arrS[i])
        }
    }
    
    print("\(even)  \(odd)")
}

printEvenOdd(string: s)
