import Foundation

//You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
//Example:
//
//longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
//
//n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
//Note
//
//consecutive strings : follow one after another without an interruption


enum ConsecutiveStrings {
    static func longestConsec(_ strarr: [String], _ k: Int) -> String {
        if strarr.isEmpty || k > strarr.count  || k <= 0 { return "" }
        
        var currentLongest = ""
        for index in 0..<strarr.count {
            if strarr.endIndex >= index+k {
                let concatString = strarr[index..<index+k].joined()
                if concatString.count > currentLongest.count { currentLongest = concatString }
            }
        }
        return currentLongest
    }
}

