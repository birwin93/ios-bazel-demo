@testable import Core
import XCTest

class ArrayUtilsTests: XCTestCase {

    func testSum() {
        XCTAssertEqual([1, 2, 3].sum(), 6)
    }

    func testSumFail() {
        XCTAssertEqual([1, 2, 3].sum(), 6)
    }
}