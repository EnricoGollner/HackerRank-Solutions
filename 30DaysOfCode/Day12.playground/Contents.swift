
import Foundation

/*
 Day 12: Inheritance
 
 You are given two classes, Person and Student, where Person is the base class and Student is the derived class. Completed code for Person and a declaration for Student are provided for you in the editor. Observe that Student inherits all the properties of Person.

 Complete the Student class by writing the following:

 A Student class constructor, which has  parameters:
 A string, firstName.
 A string, lastName.
 An integer, idNumber.
 An integer array (or vector) of test scores, .
 A char calculate() method that calculates a Student object's average and returns the grade character representative of their calculated average:
*/


import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]

    /*
    *   Initializer
    *
    *   Parameters:
    *   firstName - A string denoting the Person's first name.
    *   lastName - A string denoting the Person's last name.
    *   id - An integer denoting the Person's ID number.
    *   scores - An array of integers denoting the Person's test scores.
    */
    // Write your initializer here
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }
    /*
    *   Method Name: calculate
    *   Return: A character denoting the grade.
    */
    // Write your method here
    func calculate() -> Character {
        let average = testScores.reduce(0, +) / testScores.count
        
        if average < 40 {
            return "T"
        } else if average < 55 {
            return "D"
        } else if average < 70 {
            return "P"
        } else if average < 80 {
            return "A"
        } else if average < 90 {
            return "E"
        } else {
            return "O"
        }
    }
}

let s = Student(firstName: "Enrico", lastName: "Gollner", id: 1, scores: [100, 90, 100, 90, 100])

s.printPerson()

print("Grade: \(s.calculate())")
