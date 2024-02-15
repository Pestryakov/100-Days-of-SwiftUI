import UIKit

protocol Building {
    var rooms: Int { get }
    var coast: Int { get set }
    var agent: String { get set }
    var type: String { get }
    
    func salesSummary()
}

extension Building {
    func salesSummary() {
        print("This \(type) has \(rooms) rooms. It costs \(coast) USD. Real estate agent \(agent)")
    }
}

struct House: Building {
    var rooms: Int
    var coast: Int
    var agent: String
    let type = "house"
}



struct Office: Building {
    var rooms: Int
    var coast: Int
    var agent: String
    let type = "office"
}

let office = Office(rooms: 5, coast: 100_000, agent: "Derek")
office.salesSummary()

let castle = House(rooms: 30, coast: 100_000_000, agent: "Morti")
castle.salesSummary()
