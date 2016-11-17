//: Playground - noun: a place where people can play

import UIKit

//empty array of type string
var emptyArray: [String]

//array explicit of type double
var doubleArray: [Double] = [4.0, 3.25, 6.02, 5.2]

//array that the type is infered
var inferedArray = ["Hello", "World"]

inferedArray.append("My")
inferedArray.append("Name")
inferedArray.append("is")

inferedArray.remove(at: 4)

inferedArray.removeAll()


var oddNumbers: [Int] = []
var sum = 0
for i in 1...100 {
    if i % 2 == 0 {
        oddNumbers.append(i)
    }
}
print(oddNumbers)

var sums: [Int] = []
for number in oddNumbers {
    sums.append(number + 5)
}
print(sums)

for number in sums {
    print("The sum is: \(number)")
}

var firstArr = ["a", "b", "c"]
var secondArr = ["bo", "ro", "me"]

var mergedArr: [String] = zip(firstArr, secondArr).flatMap{[$0, $1]}
print(mergedArr)


