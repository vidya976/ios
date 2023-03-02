import UIKit


//Dictionaries or maps
//No duplicate keys are allowed
//each key can have multiple values
//As they use hash table we get values differently everytime we execute the statements.

var capitals = ["Arkansas":"LittleRock","Georgia":"Atlanta"]
print(capitals)
print(capitals.count)
capitals["Missouri"] = "kansas"
print(capitals)

var numbers = [1:"a",2:"b",3:"c"]
print(numbers)
numbers[2]="two"
print(numbers)
numbers[4]="d"
print(numbers)

var courses = [44542:"Java",44560:"Databases",44613:"Data Visualization"]
print(courses[44560]!)
print(courses.removeValue(forKey: 44613)!)
print(courses)

for(k,v) in courses{
    print(k,terminator: "-")
    print(v)
}

//Sets
//Sets allow duplicate values but takes only one of them
//values can be printed in any order

var players : Set<String> = ["David","Virat","Kane","Steve","Virat"]
print(players)
print(players.count)
print(players.contains("Virat"))
players.insert("Maxwell")
print(players)
players.remove("Kane")
print(players)


var prime : Set<Int> = [2,3,5,7,11]
var number : Set<Int> = [1,2,3,4,5]

var unionSet  : Set<Int> = prime.union(number)
print(unionSet)

var intersectSet : Set<Int> = prime.intersection(number)
print(intersectSet)

var subtractionSet : Set<Int> = prime.subtracting(number)
print(subtractionSet)

var symmDiffSet : Set<Int> = prime.symmetricDifference(number)
print(symmDiffSet)

print(prime.isSubset(of: number))


//Arrays
//values will be printed in order
//Duplicates are allowed

var num:[Int] = [2,3,4]
print(num)

var emptyArray = [Int]()
print(emptyArray)

var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])

programmingLanguages[0] = "Java Script"
print(programmingLanguages[0])

var names:[String] = ["Oliver", "Elijah", "James"]

print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")

print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")

print(names.count)

names.sort()
print("After sorting \(names)")

names.reverse()
print("After reversing \(names)")

names.remove(at: 2)
print("After removing \(names)")

names.swapAt(1, 2)
print("After swapping \(names)")

var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")

evenNumbers.append(contentsOf: oddNumbers)
print("After combining \(evenNumbers)")
