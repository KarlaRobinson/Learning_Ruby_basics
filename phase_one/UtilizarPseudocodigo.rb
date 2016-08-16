students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

# SET students to multidimensional array, 
# containing arrays of four students names and their grade
# 
# DEFINE METHOD best_students to recieve a multidimensial array of students and their grades
# and RETURN an array with the names of the student/s with a grade of 10
#   SET best_students to empty array
#   SET x and y to 0
#   
#   WHILE the array of students is not empty, 
#   SET current_student to element [x][y] of students
#
#   IF the second element of the current_student = 10
#   THEN PUSH the name of the student to best_students
#   
#     IF x = the length LESS 1, of the yth element of students
#       SET x to 0
#       INCREMENT y by 1
#     ELSE
#       INCREMENT x by 1
#     END IF
#   END IF
#   RETURN best_students
#END METHOD
#
#PRINT and INSPECT best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]








