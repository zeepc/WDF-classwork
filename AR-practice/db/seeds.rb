Instructor.create(name:"Abe", age: 33, years_exp: 4)
Instructor.create(name:"Daniel", age: 43, years_exp: 8)
Instructor.create(name:"Paul", age: 45, years_exp: 12)

Course.create(name:"Waterocolor Techniques",location:"Room-100",instructor_id: 3)
Course.create(name:"Molecular Chem",location:"Room-700",instructor_id:2)
Course.create(name:"Depressed British Writers",location:"Room-100",instructor_id: 3)

Student.create(name:"Zee",year:1)
Student.create(name:"Jane",year:4)
Student.create(name:"Luke",year:3)

Ta.create(name:"Lucas",level:100,course_id: 1)
Ta.create(name:"Peter",level:300,course_id: 3)
Ta.create(name:"Julie",level:200,course_id: 2)

CourseStudent.create(course_id:1, student_id: 3)
CourseStudent.create(course_id:2, student_id: 3)
CourseStudent.create(course_id:3, student_id: 3)




