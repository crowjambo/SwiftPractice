import XCTest
@testable import SwiftPractice

class SumOfAllMultiplesTest: XCTestCase {

    override func setUpWithError() throws {
 
    }

    override func tearDownWithError() throws {

    }
    
    func testShouldReturnTrue() {
        XCTAssertEqual(SumOfAllMultiples.findSum(0), 0)
    }

    func testBasicTests() {
        XCTAssertEqual(SumOfAllMultiples.findSum(5), 8)
        XCTAssertEqual(SumOfAllMultiples.findSum(10), 33)
        XCTAssertEqual(SumOfAllMultiples.findSum(100), 2418)
        XCTAssertEqual(SumOfAllMultiples.findSum(1000), 234168)
    }

}
