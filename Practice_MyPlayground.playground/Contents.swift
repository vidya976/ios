import UIKit

let alpha:Character="B"
switch alpha {
case "a","A":
    print("It is alphabet a or A")
case "b":
    print("It is alphabet b")
default:
    print("None are executed")
}

let isHot:Double = 60
switch isHot{
case 60...95:
    print("the temp is warm")
case 35...59:
    print("the temp is cold")
case ..<35:
    print("the temp is very cold")
default:
    print("the temperature is unbearable")
}


var x:Int=3
var y:Int=4
var z:Int=5
switch x {
    case 5:
        print("\(z)~",terminator:"")
    case 3:
        print("\(x)~",terminator:"")
        switch y {
            case 3:
                print("\(x)~",terminator:"")
            case 4:
                print("\(y)~",terminator:"")
                switch z {
                    case 5:
                        print("\(z)~")
                    case 4:
                        print("\(y)~")
                    default:
                         print("No Matching case found")
                }
            default:
                print("No Matching Case  found")
        }
    default:
        print("No number is matching")
}

var stars = 60
if(stars > 90){
    print(" you are a pro member")
}
else if(stars >= 78 && stars <= 65){
    print("you are a gold member")
}
else if(stars>=64 && stars <= 77){
    print("you are a VIP member")
}
else{
    print("Default plan")
}

var pword:String="Nalluri2000!"
if(pword.count>8){
    if(pword.contains(" ")){
        print("password should not contain spaces")
    }
    else{
        print("password is strong")
    }
}
else{
        print("A password should be minimum of 8 characters")
    }


var inputNumber = 0
if inputNumber>0 {
    print("\(inputNumber) is a positive number.")
}else if (inputNumber<0 && inputNumber%2==0){
        print("\(inputNumber) is a negative even number")
    }
    else if (inputNumber<0 ){
        print("\(inputNumber) is a negative odd number")
    }
else {
    print("The number  is 0")
}
