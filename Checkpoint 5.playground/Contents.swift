import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//let noEven = luckyNumbers.filter{$0.isMultiple(of: 2) == false}.sorted().map{"\($0) is a lucky number"}.joined(separator: "\n")
//
//for i in noEven {
//    print(i)
//}
//print(noEven)

func isOdd(number: Int) -> Bool {
    number.isMultiple(of: 2) == false
}

func luckyString(_ number: Int) -> String {
    "\(number) is a lucky number"
}

func printValue(_ string: String) {
    print(string)
}

luckyNumbers.filter(isOdd).sorted().map(luckyString).forEach(printValue)


