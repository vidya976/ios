//
//  Student.swift
//  studentpractice
//
//  Created by Nalluri,Srividya on 4/4/23.
//

import Foundation

struct Student {
    
    var name = ""
    var email = ""
    var sid = ""
    
    var courses:[Course] = []
}

struct Course {
    var title = ""
    var sem = ""
}

let student1 = Student(name:"Adam",email: "s2468@gmail.com",sid:"s2468",
                     courses:[
                        Course(title:"Mobile Computing",sem:"sp21"),
                        Course(title:"Data Structures",sem:"sp22"),
                        Course(title:"Big Data",sem:"sp22")
                     ])

let student2 = Student(name:"Bob",email: "s1357@gmail.com",sid:"s1357",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21"),
                        Course(title:"GDP1",sem:"fa21"),
                        Course(title:"Java",sem:"sp21")
                     ])

let student3 = Student(name:"Charlie",email: "s3690@gmail.com",sid:"s3690",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21"),
                        Course(title:"GDP2",sem:"sp22"),
                        Course(title:"Java",sem:"sp21")
                     ])
let student4 = Student(name:"Sunny",email: "s1111@gmail.com",sid:"s1111",
                     courses:[
                        Course(title:"Design Patterns",sem:"fa21"),
                        Course(title:"GDP2",sem:"sp22"),
                        Course(title:"Java",sem:"sp21")
                     ])

let students = [student1,student2,student3,student4]
