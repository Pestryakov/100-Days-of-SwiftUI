import UIKit

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        assertionFailure("This should never be called")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof woof woof!")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Woof Im Corgi! ")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Woof Im a Poodle!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Meow meow meow")
    }
}

final class PersianCat: Cat {
    override func speak() {
        print("Meow Im Persian Cat!")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Hrr Im Lion ")
    }
}


let corgi = Corgi(legs: 4)
corgi.speak()

let lion = Lion(legs: 4, isTame: false)
lion.speak()
