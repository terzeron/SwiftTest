//: Playground - noun: a place where people can play

import Cocoa

Int("123")
Int("Swift")

var optInt : Int?
optInt = 3
var optArr : [String]?
optArr = ["C", "Java", "Objective-C", "SmallTalk"]
//Int("123") + Int("123")
//Int("123") + 30

// forced unwrapping
var optInt2 : Int? = 3
print("\(optInt2)")
print("\(optInt2!)")

// safe unwrapping
var str = "123"
let intFromStr = Int(str)
if intFromStr != nil {
    print("\(intFromStr)")
} else {
    print("failed")
}

// unforced unwrapping
var str2 = "Swift"
if let intFromStr = Int(str2) {
    print("\(intFromStr)")
} else {
    print("failed")
}