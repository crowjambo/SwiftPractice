import XCTest
@testable import SwiftPractice

class ConsecutiveStringsTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck() {
        check(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2, "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
    }
    
    func test_abigailtheta() {
        check(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta")
    }
    
    func test_oocccffuucccjjjkkkjyyyeehh() {
        check(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1, "oocccffuucccjjjkkkjyyyeehh")
    }
    
    func test_empty() {
        check([], 3, "")
    }
    
    
    
    func check(_ inputStrings: [String], _ consec: Int, _ expected: String) {
        XCTAssertEqual(ConsecutiveStrings.longestConsec(inputStrings, consec), expected)
    }

}
