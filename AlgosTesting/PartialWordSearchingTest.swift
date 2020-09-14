import XCTest
@testable import SwiftPractice

class PartialWordSearchingTest: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
    }
    
    func testWordSearch() {
        check("ab", ["za", "ab", "abc", "zab", "zbc"], ["ab", "abc", "zab"])
        check("aB", ["za", "ab", "abc", "zab", "zbc"], ["ab", "abc", "zab"])
        check("ab", ["za", "aB", "Abc", "zAB", "zbc"], ["aB", "Abc", "zAB"])
        check("abcd", ["za", "aB", "Abc", "zAB", "zbc"], ["Empty"])
        check("me", ["home", "milk", "Mercury", "fish"], ["home", "Mercury"])
    }

    func testWordSearchEdgeCases() {
        check("ab", [], ["Empty"])
        check("", [], ["Empty"])
        check("", ["ab"], ["Empty"])
        check("", [""], ["Empty"])
        check("Empty", ["Empty"], ["Empty"])
    }
    
    func check(_ s:String, _ c:[String], _ result: [String]) {
        XCTAssertEqual(PartialWordSearching.wordSearch(s, c), result)
    }


}


