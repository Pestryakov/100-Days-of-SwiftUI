import UIKit

enum RootError: Error {
    case toLow, tooHight, notFound
}

func squareRoot(of number: Int) throws -> Int {
    if number < 1 {
        throw RootError.toLow
    }
    
    if number > 10_000 {
        throw RootError.tooHight
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw RootError.notFound
}

let number = 900

do {
    let root = try squareRoot(of: number)
    print("The square root of \(number) is \(root).")
} catch RootError.toLow {
    print("Sorry, \(number) is too low")
} catch RootError.tooHight {
    print("Sorry, \(number) is too high")
} catch RootError.notFound {
    print("Sorry, we could not find square")
} catch {
    print("Sorry, there is was a problem")
}

