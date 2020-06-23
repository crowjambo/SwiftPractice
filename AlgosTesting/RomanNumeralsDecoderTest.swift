import XCTest
@testable import SwiftPractice

class RomanNumeralsDecoderTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_I() {
        check("I", 1)
    }
        
    func test_MM() {
        check("MM", 2000)
    }
    
    func test_IX() {
        check("IX", 9)
    }
    
    func test_VIII() {
        check("VIII", 8)
    }
    
    func test_MMMCMXIV() {
        check("MMMCMXIV", 3914)
    }
    
    func test_MCMLIV() {
        check("MCMLIV", 1954)
    }
    
    func test_CDXLIV() {
        check("CDXLIV", 444)
    }
    
    func test_C() {
        check("C", 100)
    }
    
    func test_XXI() {
        check("XXI", 21)
    }
    
    func check(_ input: String, _ expected: Int) {
        XCTAssertEqual(RomanNumeralsDecoder.solution(input), expected)
    }

}
