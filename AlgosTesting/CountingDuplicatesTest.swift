import XCTest
@testable import SwiftPractice

class CountingDuplicatesTest: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
    }
    
    func test_abcde() throws {
        check("abcde", 0)
    }
    func test_abcdea() throws {
        check("abcdea", 1)
    }
    func test_aabbcde() throws {
        check("aabbcde", 2)
    }
    func test_aA11() throws {
        check("aA11", 2)
    }
    func test_Indivisibilities() throws {
        check("Indivisibilities", 2)
    }
    
    func check(_ s:String, _ c:Int) {
        XCTAssertEqual(CountDuplicates.countDuplicates(s), c)
    }


}

