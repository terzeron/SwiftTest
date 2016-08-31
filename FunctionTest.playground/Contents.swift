//: Playground - noun: a place where people can play

import Cocoa

//
// first-class function
//

func foo(base: Int) -> String {
    return "\(base + 1)"
}
let f = foo(5)
let g = foo
g(6)

func bar(base: Int, success sCallback: Void -> Void, fail fCallback: Void -> Void) -> Int {
    guard base != 0 else {
        fCallback()
        return 0
    }
    defer {
        // 가장 늦게 실행됨
        sCallback()
    }
    return 100 / base
}
print(bar(30, success: { Void -> Void in print("operation completed") }, fail: { Void -> Void in print("operation failed")}))

//
// closure
//

func basic(param: Int) -> (Int)->Int {
    let value = param + 20
    func append(add: Int) -> Int {
        return value + add
    }
    return append
}
let b = basic(10)
b(10)

// swift-specific closure
let f1 = { () -> Void in
    print("closure executed");
}
f1()

let c = { (s1: Int, s2: String) -> Void in
    print("\(s1) \(s2)")
}
c(1, "closure")

let value = [1, 9, 5, 7, 3, 2]
func order(s1: Int, s2: Int) -> Bool {
    if s1 > s2 {
        return true
    } else {
        return false
    }
}
print(value.sort(order))
print(value.sort({ (s1: Int, s2: Int) -> Bool in return s1 < s2 }))
print(value.sort({ s1, s2 in return s1 > s2 }))
print(value.sort({ return $0 > $1 }))
print(value.sort({ $0 > $1 }))
print(value.sort(<))



