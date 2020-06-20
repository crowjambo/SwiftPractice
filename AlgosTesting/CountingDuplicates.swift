import XCTest
@testable import SwiftPractice

class CountingDuplicates: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
    }

    func testAll() throws {
        check("abcde", 0)
        check("abcdea", 1)
        check("indivisibility", 1)
    }
    
    func check(_ s:String, _ c:Int) {
        XCTAssertEqual(CountDuplicates.countDuplicates(s), c)
    }


}
