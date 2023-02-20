import UIKit

let name : String = "Northeastern University"
var age : Int8 = 21
var arr = [1, 2, 3]
var emptyArray: [Int] = []

/*
 Int
 Float
 Double
 Character
 String
 Array [1, 2, 3]
 
 */
print(Int8.max)
print(name)


//operators

//arithmetic operators
/*
 add +
 subs -
 multi *
 reminder %
 assignment =
 */

//comparision operators
/*
 equal ==
 not equal !=
 greater than >
 less than <
 
 */


//conditional operators
//var variable = condition ? value1 : value 2

let howOldAreYou = age > 40 ? "Experienced" : "You are young"
print(howOldAreYou)


//string interpolation
let firstName = "Lin"
let lastName = "Ye"

let helloString = "Hello \(firstName), \(lastName) welcome to the class"
print(helloString)

//collections types

var friends : [String] = []
friends.append("Tom")
friends.append("Bill")
friends.append("jack")
friends.append("Peter")

print(friends.count)
print(friends.first!)
print(friends.endIndex)
print(friends.remove(at: 1))


friends[0] = "Andy"
let firstFriend = friends[0]
print(firstFriend)

for friend in friends {
    print(friend)
}

for (index, friend) in friends.enumerated(){
    print("Friend Name = \(friend) Index = \(index)")
}


//sets
var foodItemsEmpty = Set<String>() // empty
var foodItemsInitialized : Set<String> = ["Pizza", "Burger", "Salad"]
var foodItemsInitializedInferred : Set = ["Pizza", "Burger", "Salad"]


foodItemsEmpty.insert("Pizza")
foodItemsEmpty.insert("Burger")
foodItemsEmpty.insert("Salad")

print(foodItemsEmpty.contains("Burger"))
for food in foodItemsEmpty.sorted(){
    print(food)
}


//dictionarys: Hashtable
var countryDetailsInitializes : [String: String] =
[
    "US" : "United States",
    "IN" : "India",
    "CA" : "Canada",

]

var countryDetailsInferred =
[
    "US" : "United States",
    "IN" : "India",
    "CA" : "Canada",

]

print("\(countryDetailsInferred["IN"])")

countryDetailsInferred.removeValue(forKey: "CA")
countryDetailsInferred["IN"] = nil
countryDetailsInferred["US"] = "Country America"
print("\(countryDetailsInferred["US"])")



for (countryCode, countryName) in countryDetailsInferred{
    print("Country Code = \(countryCode) Country Name = \(countryName)")
}

var i = 0
let endIndex = 5
while i < endIndex{
    print("I am here")
    i = i + 1
}


if age < 40 {
    print("You are young")
} else{
    print("You are experienced")
}

//switch

let letter = "c"

switch letter{
case "a", "A":
    print("This is first letter")
case "z":
    print("This is last letter")
default:
    print("this is some of the middle letter")
}

var myName :String?
print(myName)

var myInt : Int?
myInt = 5
var multipliedBy5 = 0
if let val = myInt {
    
    let multipliedBy5  = val * 5
    print(multipliedBy5)
}


func greet() {
    print("Hello World")
}

greet()

func greetWithName(_ firstName: String, lastName : String){
    print("Hello \(firstName), \(lastName)")
}

greetWithName("Lin", lastName: "Ye")



func getFullName(_ firstName : String, _ lastName : String) -> String {
    return "\(firstName), \(lastName)"
}

print(getFullName("Lin", "Ye"))


var a = 5
var b = 6

func incrementByOne(_ a : inout Int){
    a = a + 1
}

incrementByOne(&a)
print("value of a = \(a)")



//structures

struct User {
    let firstName: String
    let lastName: String
    var age: Int
    
    func getFullName() -> String{
        return "\(firstName), \(lastName)"
    }
}

var Lin = User(firstName: "Lin", lastName: "Ye", age: 21)
print(Lin.getFullName())

//enums
enum ColorEnum {
    case red
    case green
    case blue
}

print(ColorEnum.red)


