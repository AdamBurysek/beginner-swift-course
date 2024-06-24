import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(
    name: "Adam",
    age: 20
)

foo.name
foo.age

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name:String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 =  CommodoreComputer(name: "C64")

c64.name
c64.manufacturer

//struct Person2 {
//    let firstName: String
//    let lastName: String
//    let fullName: String
//    init(firstName: String, lastName: String, fullName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.fullName = "\(firstName) \(lastName)"
//    }
//}

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")

fooBar.fullName

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving..."
        currentSpeed = speed
    }
}


//let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)

var mutableCar = Car(currentSpeed: 10)
mutableCar.drive(speed: 20)
mutableCar.currentSpeed

var mutableCar2 = Car(currentSpeed: 50)
let copy = mutableCar2
mutableCar2.drive(speed: 90)
mutableCar2.currentSpeed
copy.currentSpeed

var mutableCar3 = Car(currentSpeed: 50)
var copy2 = mutableCar3
mutableCar3.drive(speed: 90)
mutableCar3.currentSpeed
copy2.currentSpeed

struct LivingThing {
    init() {
        "I'm a living thing"
    }
}

/// Structures can't inherit
//struct Animal: LivingThing {
//
//}

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpped: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpped)
    }
}

let bike1 = Bike(
    manufacturer: "SUP",
     currentSpeed: 20
)

let bike2 = bike1.copy(currentSpped: 30)
bike1.currentSpeed
bike2.currentSpeed
