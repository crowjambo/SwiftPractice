import Foundation

//Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

//For example:

// persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
//                       // and 4 has only one digit
//
// persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
//                        // 1*2*6 = 12, and finally 1*2 = 2

// persistence(for: 4) === 0 // because 4 is already a one-digit number

enum PersistentBugger {
    static func persistence(for num: Int) -> Int {
        if num < 0 { return 0 }
        var output = 0
        var numbersArray = numberToIndividualDigits(for: num)
        while numbersArray.count > 1 {
            let multiplicationResult = numbersArray.reduce(1, *)
            numbersArray = numberToIndividualDigits(for: multiplicationResult)
            output += 1
        }
        return output
    }
    
    private static func numberToIndividualDigits(for num: Int) -> [Int] {
        return String(num).compactMap({ $0.wholeNumberValue })
    }
}
