import UIKit

var num:Int = 5
for index in 1...5{
    print("\(index) * \(num) = \(index*num)")
}

var char = "Umbrella"
var count = 0
for c in char {
    if(c=="a" || c=="e" || c=="i" || c=="o" || c=="u" || c=="A" || c=="E" || c=="I" || c=="O" || c=="U"){
        count+=1
    }
}
print("The word \(char) has \(count) vowels")
