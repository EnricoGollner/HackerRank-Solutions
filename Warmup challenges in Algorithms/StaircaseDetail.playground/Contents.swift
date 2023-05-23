import Cocoa

/*
Staircase detail:
   #
  ##
 ###
####
Its base and height are both equal to .
 It is drawn using # symbols and spaces.
 The last line is not preceded by any spaces.
*/

func staircase(n: Int) -> Void {
    var lines = ""
    
    for i in (1...n).reversed() {
        lines += String(repeating: " ", count: i - 1) + String(repeating: "#", count: n - i + 1) + "\n"
    }
    
    print(lines)
}

staircase(n: 4)
