
import Foundation

/*
 Given N names and phone numbers, assemble a phone book that maps friends' names to their respective phone numbers.
 
 You will then be given an unknown number of names to query your phone book for. For each name queried, print the associated entry from your phone book on a new line in the form name=phoneNumber; if an entry for  is not found, print Not found instead.
 
*/

var n = Int(readLine()!)!

var phoneBook = [String: String]()

for _ in 0..<n {
    // .split(separator: " ") separa em substrings, que devemos transformar em String, no caso utilizamos: .map(String.init) no array de substrings formado pelo método split para fazer a conversão:
    let contact = readLine()!.split(separator: " ").map(String.init)
    phoneBook[contact[0]] = contact[1]
}

var queryName = readLine()
while queryName != nil {
    if let number = phoneBook[queryName!] {
        print("\(queryName!)=\(phoneBook[queryName!]!)")
    }
    else {
        print("Not found")
    }
    queryName = readLine()
}
