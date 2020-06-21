import XCTest
@testable import SwiftPractice

class PersistentBuggerTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    
    func test_39() {
        check(39, 3)
    }
    
    func test_999() {
        check(999, 4)
    }
    
    func test_4() {
        check(4, 0)
    }
    
    func check(_ input: Int, _ expected: Int) {
        XCTAssertEqual(PersistentBugger.persistence(for: input), expected)
    }

    

}
