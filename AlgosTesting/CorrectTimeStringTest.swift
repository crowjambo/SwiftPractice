import XCTest
@testable import SwiftPractice

class CorrectTimeStringTest: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
    }
    
    static var allTests = [
        ("Test Nil", testNil),
        ("Test Empty", testEmpty),
        ("Test Invalid", testInvalid),
        ("Test Valid", testValid),
    ]

    func testNil() {
        XCTAssertNil(CorrectTimeString.correct(nil))
    }
    
    func testEmpty() {
        XCTAssertEqual("", CorrectTimeString.correct(""))
    }
    
    func testInvalid() {
        XCTAssertNil(CorrectTimeString.correct("001122"))
        XCTAssertNil(CorrectTimeString.correct("00;11;22"))
        XCTAssertNil(CorrectTimeString.correct("0a:1c:22"))
    }
    
    func testValid() {
        XCTAssertEqual("09:10:01", CorrectTimeString.correct("09:10:01"))
        XCTAssertEqual("12:10:10", CorrectTimeString.correct("11:70:10"))
        XCTAssertEqual("20:40:39", CorrectTimeString.correct("19:99:99"))
        XCTAssertEqual("00:01:01", CorrectTimeString.correct("24:01:01"))
        XCTAssertEqual("04:01:01", CorrectTimeString.correct("52:01:01"))
    }


}


