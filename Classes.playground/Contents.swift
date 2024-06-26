import Foundation

class Person {
    var name: String
    var age: Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)
foo.age
foo.increaseAge()
foo.age

foo.age
let bar = foo
bar.increaseAge()
foo.age

if foo === bar {
    "Target to same memory"
} else {
    "Don't target to same memory"
}

class Vehicle {
    func goVroom() {
        "Vroom vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()


// Cant change age from outside
class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.age

// Cant modify like this
//baz.age += 1

baz.increaseAge()
baz.age

class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year : Int
    
    // Designated initiator
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(model: String,
         year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(
        model: String
    ) {
        self.init(
            model: model,
            year: 2023
        )
    }
}

class TeslaModelY: Tesla {
    override init(){
        super.init(
            model: "Y",
            year: 2023
        )
        // Cant call convience init inside designated init
        // super.init(model: "Y")
    }
}

let modelY = TeslaModelY()

modelY.model
modelY.manufacturer
modelY.year

let fooBar = Person2(age: 20)
fooBar.age

func doSomething (with person: Person2) {
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age

class MyClass {
    init() {
        "Initialized"
    }
    func doSomething(){
        "Do something"
    }
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}

myClosure()
