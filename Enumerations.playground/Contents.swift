import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
    case hedgehog
}

let cat = Animals.dog

if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else if cat == Animals.rabbit {
    "It is rabbit"
} else {
    "IDK"
}

/// Best practise using switch
switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
case .hedgehog:
    "This is a hedgehog"
    break
}

//func describeAnimal(_ animal: Animals) {
//    switch animal {
//    case .cat:
//        "This is a cat"
//        break
//    case .dog:
//        "This is a dog"
//        break
//    default:
//        "This is something else"
//    }
//}
//
//describeAnimal(Animals.dog)

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

//switch wwwApple {
//case .fileOrFolder(
//    path: let path,
//    name: let name
//):
//    path
//    name
//    break
//case .wwwUrl(
//    path: let path
//):
//    path
//    break
//case .song(
//    artist: let artist,
//    songName: let songName
//):
//    artist
//    songName
//    break
//}

//switch wwwApple {
//case .fileOrFolder(
//    let path,
//    let name
//):
//    path
//    name
//    break
//case .wwwUrl(
//    let path
//):
//    path
//    break
//case .song(
//    let artist,
//    let songName
//):
//    artist
//    songName
//    break
//}

switch wwwApple {
case let .fileOrFolder(
    path,
    name
):
    path
    name
    break
case let .wwwUrl(
    path
):
    path
    break
case let .song(
    artist,
    songName
):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "Without You"
)

if case let .song(_, songName) = withoutYou{
    songName
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
//    func getManufactrurer () -> String {
//        switch self {
//        case let .car(manufacturer, _):
//            return manufacturer
//            
//        case let .bike(manufacturer, _):
//            return manufacturer
//        }
//    }
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

//func getManufactrurer (from vehicle: Vehicle) -> String {
//    switch vehicle {
//    case let .car(manufacturer, _):
//        return manufacturer
//        
//    case let .bike(manufacturer, _):
//        return manufacturer
//    }
//}

let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "X"
)
//getManufactrurer(from: car)
//car.getManufactrurer()
car.manufacturer

let bike = Vehicle.bike(
    manufacturer: "HD",
    yearMade: 1999
)
////getManufactrurer(from: bike)
//bike.getManufactrurer()
bike.manufacturer

enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mum"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue

enum FauvoriteEmoji: String, CaseIterable {
    case blush = "🤭"
    case rocket = "🚀"
    case fire = "🔥"
}

FauvoriteEmoji.allCases
FauvoriteEmoji.allCases.map(\.rawValue)

if let blush = FauvoriteEmoji(rawValue: "🤭") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesen't exist"
}

if let snow = FauvoriteEmoji(rawValue: "❄️") {
    "Snow exists?? "
    snow
} else {
    "This emoji doesen't exist"
}

enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight

/// Moc se nepouziva

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    func calculateRestult(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
        case let .add (lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        
    case let .freeHand(operation):
        return calculateRestult(of: operation)
        }
    }
}

let freeHand = IntOperation.freeHand(.add(2, 4))
freeHand.calculateRestult()
