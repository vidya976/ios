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

