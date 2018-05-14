//: ## Lesson 7 Exercises - Enums & Structs

//: __Problem 1__
//:
//: At the end of the code snippet below, what is the value of macchiato.steamedMilk when EspressoDrink is implemented as a struct? What about when EspressoDrink is implemented as a class?
enum Amount {
    case none
    case splash
    case some
    case alot
}

struct EspressoDrink {
    let numberOfShots: Int
    var steamedMilk: Amount
    let foam: Bool
    
    init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
        self.numberOfShots = numberOfShots
        self.steamedMilk = steamedMilk
        self.foam = foam
    }
}

var macchiato = EspressoDrink(numberOfShots: 2, steamedMilk: .none, foam: true)
var espressoForGabrielle = macchiato
espressoForGabrielle.steamedMilk = .splash
macchiato.steamedMilk

//: __Problem 2__
//:
//: __2a.__
//: Write an enum to represent the five fingers on a human hand.
enum fingers {
    case thumb
    case forefinger
    case middleFinger
    case ringFinger
    case pinkie
}
//:
//: __2b.__
//: Associate an Int value with each finger.

enum fingers2 {
    case thumb(Int)
    case forefinger(Int)
    case middleFinger(Int)
    case ringFinger(Int)
    case pinkie(Int)
}

enum fingers3: Int {
    case thumb = 1
    case forefinger = 2
    case middleFinger = 3
    case ringFinger = 4
    case pinkie = 5
}

//: __Problem 3__
//:
//: Enum, class, or struct?
//:
//: Uncomment the code below and choose whether each type should be an enum, class, or struct.
struct Window {
    let height: Double
    let width: Double
    var open: Bool
}

enum WritingImplement {
    case pen
    case pencil
    case marker
    case crayon
    case chalk
}

struct Material {
    let name: String
    let density: Double
    let stiffness: Double
}


struct Bicycle {
    let frame: Material
    let weight: Double
    let category: String

    static var bikeCategories: [String] = ["Road", "Touring", "Mountain", "Commuter", "BMX"]

    func lookCool() {
        print("Check out my gear-shifters!")
    }
}

struct Cyclist {
    var speed: Double
    let agility: Double
    let bike: Bicycle

    var maneuverability: Double {
        get {
            return agility - speed/5
        }
    }

    init(speed: Double, agility: Double, bike: Bicycle) {
        self.speed = speed
        self.agility = agility
        self.bike = bike
    }

    mutating func brake() {
        speed -= 1
    }

    func pedalFaster(factor: Double) {
        speed * factor
    }
}

enum Size: String {
    case small = "8 ounces"
    case medium = "12 ounces"
    case large = "16 ounces"
}

//: __Problem 4__
//:
//: Write a cookie struct.
//:
//: __4a.__
//: Include 2 stored properties. Examples might include a string representing flavor, or an int representing minutesSinceRemovalFromOven.
struct cookie {
    let flavor: String
    let minutesSinceRemovalFromOven: Int
}
//:__4b.__
//: Add a computed property, "delicious", a bool whose value depends upon the values of the stored properties.
struct cookie2 {
    let flavor: String
    let minutesSinceRemovalFromOven: Int
    
    var delicious: Bool {
        get {
            return minutesSinceRemovalFromOven < 10
        }
    }
}
//:__4c.__
//:Include a method. For example, the method tempt() might return or print out an indication of a person being tempted to eat the cookie.

struct cookie3 {
    let flavor: String
    let minutesSinceRemovalFromOven: Int
    
    var delicious: Bool {
        get {
            return minutesSinceRemovalFromOven < 10
        }
    }
    
    func tempt() {
        print("message here!!!")
    }
}

//: __4d.__
//: Create an instance of your Cookie struct and call its method.
let c1 = cookie3(flavor: "chocolate", minutesSinceRemovalFromOven: 6)
print(c1.delicious)
c1.tempt()

//: __Problem 5__
//:
//: Write a class to represent a listing for a Bed and Breakfast.
//:
//: __5a.__
//: Include 3 stored properties. Examples might include a category representing the type of housing i.e. apartment or house, or a bool representing availability.
class BnBListing {
    let breakfast: Bool
    let housing: houseType
    var availability: Bool
    
    init(breakfast: Bool, housing: houseType, availability: Bool) {
        self.breakfast = breakfast
        self.housing = housing
        self.availability = availability
    }
}
//: __5b.__
//: Consider writing a helper enum and incorporating it as one of your properties.
enum houseType {
    case apartment
    case house
}

//: __5c.__
//: Include at least one method. For example, the method book() might toggle the availability bool or return a reservation confirmation.
class BnBListing2 {
    let breakfast: Bool
    let housing: houseType
    var availability: Bool
    
    init(breakfast: Bool, housing: houseType, availability: Bool) {
        self.breakfast = breakfast
        self.housing = housing
        self.availability = availability
    }
    
    func book() -> String{
        if self.availability {
            self.availability = false
            return "Booked!"
        }
        return "Not available"
    }
}
//: __5d.__
//: Create an instance of your BnBListing class and call one of its methods.
var b1 = BnBListing2(breakfast: true, housing: houseType.house, availability: true)
print(b1.book())
