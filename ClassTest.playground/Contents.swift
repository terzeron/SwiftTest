//: Playground - noun: a place where people can play

import Cocoa

//
// Class
//

struct Resolution {
    var width = 0
    var height = 0
    
    func desc() -> String {
        return "resolution struct"
    }
}

class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    var resolution : Resolution = Resolution()
    
    func desc() -> String {
        return "videomode class"
    }
}


let insRes = Resolution()
let insVMode = VideoMode()

let res = Resolution()
print("\(res.width)")

let vMode = VideoMode()
print("\(vMode.resolution.width)")

vMode.name = "Sample"
vMode.resolution.width = 1280
print("\(vMode.resolution.width)")

let defaultRes = Resolution(width: 1024, height: 768)


let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("\(cinema.width)")

let video = VideoMode()
video.name = "Original Video Instance"
print("\(video.name!)")

let dvd = video
dvd.name = "DVD Video Instance"
print("\(video.name!)")

// 객체 비교
if (video === dvd) {
    print("same")
} else {
    print("different")
}
// same

let vs = VideoMode()
let ds = VideoMode()
if (vs === ds) {
    print("same")
} else {
    print("different")
}
// different


struct FixedLengthRange {
    var startValue: Int
    let length: Int
}

struct FlexibleLengthRange {
    let startValue: Int
    var length: Int
}

// 구조체의 variable인 property만 수정 가능
var rangeOfFixedIntegers = FixedLengthRange(startValue: 0, length: 3)
rangeOfFixedIntegers.startValue = 4
var rangeOfFlexibleIntegers = FlexibleLengthRange(startValue: 0, length: 3)
rangeOfFlexibleIntegers.length = 5


// 구조체가 constant가 되면 수정 불가
let constantsOfInstance = FixedLengthRange(startValue: 3, length: 4)
//constantsOfInstance.startValue = 0 // compile error
var variablesOfInstance = FixedLengthRange(startValue: 3, length: 4)
variablesOfInstance.startValue = 0

// 클래스는 constant가 되어도 수정 가능

// lazy
class OnCreate {
    init() {
        print("OnCreate!")
    }
}

class LazyTest {
    var base = 0
    lazy var late = OnCreate()
    init() {
        print("LazyTest!")
    }
}

let lz = LazyTest()
lz.late

// computed properties
struct Rect {
    var originX: Double = 0.0, originY: Double = 0.0
    var sizeX: Double = 0.0, sizeY: Double = 0.0
    
    var centerX: Double {
        get {
            return originX + (sizeX / 2)
        }
        set(newCenterX) {
            originX = newCenterX - (sizeX / 2)
        }
    }
    var centerY: Double {
        get {
            return originY + (sizeY / 2)
        }
        set(newCenterY) {
            originY = newCenterY - (sizeY / 2)
        }
    }
}
var square = Rect(originX: 0.0, originY: 0.0, sizeX: 10.0, sizeY: 10.0)
print("\(square.centerX), \(square.centerY)")
