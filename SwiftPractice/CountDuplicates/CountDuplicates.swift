import Foundation

//Count the number of Duplicates

//Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

//Example

//"abcde" -> 0 # no characters repeats more than once
//"aabbcde" -> 2 # 'a' and 'b'
//"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
//"indivisibility" -> 1 # 'i' occurs six times
//"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
//"aA11" -> 2 # 'a' and '1'
//"ABBA" -> 2 # 'A' and 'B' each occur twice


enum CountDuplicates {
    static func countDuplicates(_ s:String) -> Int {
        let inputString = s.lowercased()
        var collection = [Character: Int]()
        var output: Int = 0

        inputString.forEach { (char) in
            if collection[char] != nil {
                collection[char]! += 1
            } else {
                collection[char] = 1
            }
        }
        
        for key in collection.keys {
            guard let count = collection[key] else { continue }
            if count > 1 {
                output += 1
            }
        }
        return output
    }
    
    
    // MARK: - Alternative, nice way
    
//    func countDuplicates(_ s:String) -> Int {
//        var counts: [String: Int] = [:]
//        for character in Array(s) {
//            counts[character.lowercased(), default: 0] += 1
//        }
//        return counts.values.filter{ $0 > 1 }.count
//    }
}
