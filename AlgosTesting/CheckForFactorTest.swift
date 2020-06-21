import XCTest
@testable import SwiftPractice

class CheckForFactorTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_2450() {
        check(2450, 5, true)
    }
    
    func test_24612() {
        check(24612, 3, true)
    }
    
    func test_9() {
        check(9, 2, false)
    }
    
    func check(_ base: Int, _ factor: Int, _ expected: Bool) {
        XCTAssertEqual(CheckForFactor.checkForFactor(base, factor), expected)
    }

}
