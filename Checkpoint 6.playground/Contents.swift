import UIKit

struct Car {
    let model: String
    let seats: Int
    private(set) var gear = 0
    let maxGears: Int
    
    mutating func changeGear (diff: Int) -> Int {
        let newGear = gear + diff
        
        if newGear >= 0 && newGear <= maxGears {
            gear = newGear
        }
        return gear
    }
}

var car = Car(model: "Fiat", seats: 5, maxGears: 15)
car.changeGear(diff: 12)
car.changeGear(diff: -5)
print(car)


