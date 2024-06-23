import Foundation

func noArgumentsAndNoReturnValue() {
    "Hello World"
}
noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    let newValue = value + 2
}

plusTwo(value: 2)


// If function have more than one line of code, func dont need return statement
func newPlusTwo(value: Int) -> Int {
    value + 2
}

newPlusTwo(value: 20)

func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}

let customAdded = customAdd(
    value1: 10,
    value2: 20
)

/// Values that create function can have external and internal name
/// Eternal name is first, internal second
/// _ mean no name
func customMinus(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs - rhs
}

let customSubstracted = customMinus(
    20,
    10
)

customAdd(value1: 20, value2: 30)

/// If you dont set the result into let or var, this can fix the error
@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs + rhs
}

func doSomethingComplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}

doSomethingComplicated(with: 30)

func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    "\(firstName) \(lastName)"
}

getFullName()
getFullName(firstName: "Adam")
getFullName(lastName: "Konev")
getFullName(firstName: "Pepa", lastName: "Jedno")

