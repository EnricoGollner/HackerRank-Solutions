import Cocoa

/*

 HackerLand University has the following grading policy:

 Every student receives a  in the inclusive range from  0 to 100.
 Any grade less than 40 is a failing grade.
 Sam is a professor at the university and likes to round each student's grade according to these rules:
 
 If the difference between the grade and the next multiple of 5 is less than 3 (módulo - %), round grade up to the next multiple of 5.
 If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
 
 Returns:
 int[n]: the grades after rounding as appropriate
 
*/

let grades = [4, 73, 67, 38, 33]

func gradingStudents(grades: [Int]) -> [Int] {
    var finalGrades = [Int]()
        
        for grade in grades {
            let nextMultiple = (grade/5 + 1) * 5
            let diff = nextMultiple - grade
            
            if diff < 3 && grade >= 38 {
                finalGrades.append(grade + diff)
            } else {
                finalGrades.append(grade)
            }
        }
        
        return finalGrades
}

print(gradingStudents(grades: grades))
