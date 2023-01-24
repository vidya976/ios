import UIKit

var greeting = "Hello, playground"
var i = 20
var name = "srividya"
print("hi",10,20,30.0,"hello world")
//String interpolation
//It uses forward slash and the variable name
//Ex 1
print("my name is \(name)!")
//Ex 2 String interpolation works with different types of datatypes
print("my name is \(name) and my age is \(i) after \(i) years it will be \(i*2)." )
//we can't write the above example in java using string conacatination as name and i are of different datatypes
print(i+1)
i = i-10
print(i)
//printing like a paragraph
//we go to edit on the top and we have emojis and symbols option where we can add emojis to the statement
print("""
Hello🥰
This is Srividya Nalluri
Now at NWMissouri
""")
//we are using \r which is a carriage return used to print a line in the next line
print("Hello All,\rWelcome to Missouri🥳.")
// if we use let instead of var then that variable is a constant
let message : String = "I love BTS"
print(message)

// terminator is the end of the line(prints on one line),default value is space if you want to use any other you have to mention it in the quotations
print("Welcome to Missouri")
print("Fall 2021")
print("welcome to Missouri" , terminator: "-")
print("Fall 2021")

// we are using separator to seperate in the print statement

print("the list of numbers are")
print(1,2,3,4,5)
print("the list of numbers are")
print(1,2,3,4,5, separator: "-")


import UIKit

//worksheet class - 01/17/23
var greeting = "Hello, playground"
var i = 20
var name = "srividya"
print("hi",10,20,30.0,"hello world")
//String interpolation
//It uses forward slash and the variable name
//Ex 1
print("my name is \(name)!")
//Ex 2 String interpolation works with different types of datatypes
print("my name is \(name) and my age is \(i) after \(i) years it will be \(i*2)." )
//we can't write the above example in java using string conacatination as name and i are of different datatypes
print(i+1)
i = i-10
print(i)
//printing like a paragraph
//we go to edit on the top and we have emojis and symbols option where we can add emojis to the statement
print("""
Hello🥰
This is Srividya Nalluri
Now at NWMissouri
""")
//we are using \r which is a carriage return used to print a line in the next line
print("Hello All,\rWelcome to Missouri🥳.")
// if we use let instead of var then that variable is a constant
let message : String = "I love BTS"
print(message)

// terminator is the end of the line(prints on one line),default value is space if you want to use any other you have to mention it in the quotations
print("Welcome to Missouri")
print("Fall 2021")
print("welcome to Missouri" , terminator: "-")
print("Fall 2021")

// we are using separator to seperate in the print statement

print("the list of numbers are")
print(1,2,3,4,5)
print("the list of numbers are")
print(1,2,3,4,5, separator: "-")

// worksheet practice - 01/19/23

var mobilebrand = "Apple"
mobilebrand = "Samsung"
print(mobilebrand)

let pi=3.14
print(pi)//error would come if we try to change the value as it is a constant

//explicit declaration of variables
var age : Int = 23
age=age*2
print(age)

var awemessage="This is superb!"
print(awemessage)
print("awemessage")

var course1 = "ios"
var course2 = "java"
print(course1,course2)
print(course1,"-",course2)

print(10,20,30)
print(10.15,30.5)

//Tuples

var origin = (x : 0 , y : 0)
var point=origin
print("(",terminator: "")
print(origin.0,origin.1,separator: ",",terminator: "")
print(")")

var httperror = (errorcode : 404 , errormessage : "page not found" , errorcolour : "red")
print(httperror)
print(httperror.errorcode , terminator : ": ")
print(httperror.errormessage , terminator : "-")
print(httperror.errorcolour)

var Name = ("john","smith")
var fname = Name.0
var lname = Name.1
print(fname,terminator : ",")
print(lname)

let city = (name : "Maryville", population : 11,000)
let (cityName,cityPopulation) = (city.0,city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions",11,13.5)
print(type(of: groceries))

var fn = "Joe"
var ln = "root"
(fn,ln)=(ln,fn)
print(fn,ln)

var cricketkit = ("handgloves")



//operators

var n1 = (3,4)
var n2 = (4,5)
print(n1 < n2)

var m1 = (3,6)
var m2 = (4,5)
print(m1 < m2)

var v1 = (4,4)
var v2 = (4,5)
print(v1 < v2)

var q1 = (4,6)
var q2 = (4,5)
print(q1 < q2)

var r1 = (4,4)
var r2 = (4,5)
print(r1 == r2)

var t1 = (4,6)
var t2 = (4,5)
print(t1 == t2)

var a1 = (4,5)
var a2 = (4,5)
print(a1 == a2)

//if-else

var marks = 45
if marks>50{
    print("the student passes with \(marks) marks")}
else{
    print("the student manages with \(marks) marks")}
var input = -10
if input>0{
    print("\(input) is a positive number")}
else if (input<0){
    print("\(input) is a negative number")
if(input%2==0){
    print("\(input) is a negative even number")}
    else {
        print("the number is 0")
    }
}


