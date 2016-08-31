//: Playground - noun: a place where people can play

import Cocoa

//
// list
//

var cityRow = ["Seoul", "New York", "LA", "Santiago"]
let size = cityRow.count
for i in 0 ..< size {
    print("\(i)번째 배열 원소는 \(cityRow[i])입니다.")
}

for row in cityRow {
    print("\(row)")
}


var list = [String]()
if list.isEmpty {
    print("empty")
} else {
    print("\(list.count) items")
}

var cities = [String]()
cities.append("Seoul")
cities.append("New York")
cities.insert("Tokyo", atIndex: 1)
cities.appendContentsOf(["Dubai", "Sydney"])
cities[2] = "Madrid"
cities

var cityRow2 = Array(count: 3, repeatedValue: "None")
var cityRow3 = [String](count: 4, repeatedValue: "None")

var alphabet = ["a", "b", "c", "d", "e"]
alphabet[1...2]
alphabet[1..<3]


//
// Set
//

var genres : Set = ["Classic", "Rock", "Balad"]
var genres2 : Set<String> = [] // empty set
genres2.insert("Classic")
genres2.insert("Rock")
genres2.insert("Balad")

if genres2.isEmpty {
    print("empty")
} else {
    print("\(genres.count) items")
}

for g in genres2.sort() {
    print("\(g)")
}

if genres2.contains("Rock") {
    print("Rock is containted")
} else {
    print("Rock is not contained")
}

let oddDigits : Set = [1, 3, 5, 7, 9]
let evenDigits : Set = [0, 2, 4, 6, 8]
oddDigits.intersect(evenDigits).sort()
oddDigits.isSubsetOf(evenDigits)
oddDigits.isDisjointWith(evenDigits)


// 
// Tuple
//

let tupleValue = ("a", "b", 1, 2.5, true)
tupleValue.0
tupleValue.1
var tpl1 : (Int, String) = (100, "hello")
func getTupleValue() -> (String, String, Int) {
    return ("t", "v", 100)
}
let (a, b, _) = getTupleValue()
a
b


//
// Dictionary
//

var capital = ["KR": "Seoul", "EN": "London", "FR": "Paris"]
capital["EN"]
capital["NE"]
var capital2 = Dictionary<String, String>()
var capital3 = [String: String]()
var capital4 : Dictionary<String, String>
capital4 = Dictionary()
var capital5 : [String: String]
capital5 = [String: String]()
capital["KR"] = "Pusan"
capital.updateValue("Sapporo", forKey: "JP")
capital["FR"] = nil
capital
for (key, value) in capital {
    print("\(key) --> \(value)")
}

