@testable import Core
import XCTest

class StringUtilsTests: XCTestCase {

    func testTrimmed() {
        XCTAssertEqual(" hi \n".trimmed(), "hi")
    }
}