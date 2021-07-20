import UIKit

// Unit 18. Inheritance
// vk.com/topic-58860049_31876820


print("----- Part 1 -----")

class Artist {
    var firstName : String
    var lastName : String
    
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    init(firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func perform() -> String {
        return "\(fullName). Performance: "
    }
}

class Singer : Artist {
    override func perform() -> String {
        return super.perform() + " singing"
    }
}
class Dancer : Artist {
    override func perform() -> String {
        return super.perform() + " dancing"
    }
}
class Painter : Artist {
    override var firstName : String {
        get {
            return "Great " + super.firstName
        }
        set {
            super.firstName = newValue
        }
    }
    override func perform() -> String {
        return super.perform() + " painting"
    }
}

let singer = Singer(firstName: "Mike", lastName: "Johnes")
let dancer = Dancer(firstName: "Pamela", lastName: "Jeffers")
let painter = Painter(firstName: "Nickolas", lastName: "Banks")

let array = [singer, dancer, painter]

for value in array {
    print(value.perform())
}



print("----- Part 2 -----")

class Vehicle {
    var name : String
    var speed : Int
    var capacity : Int
    var costPerHour : Int
    var transferPrice : String {
        return "\(name) with speed: \(speed) miles per hour and max capacity: \(capacity) kilograms inside. Price \(costPerHour) per hour"
    }
    
    init(name: String, speed : Int, capacity : Int, costPerHour : Int) {
        self.name = name
        self.speed = speed
        self.capacity = capacity
        self.costPerHour = costPerHour
    }
    
    func transferFromAtoB(numberOfPeople: Int, distance: Int) -> String {
        let timeJourney = distance / speed
        let tripCost = timeJourney * costPerHour * numberOfPeople
        return "Distance: \(distance) miles, Time: \(timeJourney) hours, Cost for \(numberOfPeople) people: \(tripCost)$ "
    }
}

class Plain: Vehicle {
    override func transferFromAtoB(numberOfPeople: Int, distance: Int) -> String {
        super.transferFromAtoB(numberOfPeople: numberOfPeople, distance: distance) + "flying by plain: \(name)"
    }
}

class Ship: Vehicle {
    override func transferFromAtoB(numberOfPeople: Int, distance: Int) -> String {
        let timeJourney = distance / speed
        let tripCost = timeJourney * costPerHour * numberOfPeople
        return "\(distance) miles, \(timeJourney) hours in trip with speed \(speed) miles per hour , Cost for \(numberOfPeople) people: \(tripCost)$ "
    }
}

class Helicopter: Vehicle {
    override func transferFromAtoB(numberOfPeople: Int, distance: Int) -> String {
        super.transferFromAtoB(numberOfPeople: numberOfPeople, distance: distance) + "flying by helicopter: \(name)"
    }
}

class Car: Vehicle {
    override func transferFromAtoB(numberOfPeople: Int, distance: Int) -> String {
        "Trip by car: \(name) with \(numberOfPeople) people, distance: \(distance) miles. Cost \(costPerHour) per hour. Total price: \((distance / speed) * costPerHour  )"
    }
}

let jet = Plain(name: "Boeing777", speed: 800, capacity: 2000, costPerHour: 200)

let boat = Ship(name: "Honda0780", speed: 160, capacity: 800, costPerHour: 100)

let eachine = Helicopter(name: "Eachine800", speed: 280, capacity: 800, costPerHour: 160)

let bmw = Car(name: "Bmw700GS", speed: 200, capacity: 400, costPerHour: 50)



let arrayTransport = [jet, boat, eachine, bmw]

for (value) in arrayTransport {
    print(value.transferFromAtoB(numberOfPeople: 4, distance: 800))
}



print("----- Part 3 -----")
