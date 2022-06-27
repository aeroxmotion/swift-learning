import XCTest
@testable import LearningSwift

final class LearningSwiftTests: XCTestCase {
    func testLinkedList() throws {
        let expected = [20, 12]
        var linkedList = LinkedList<Int>()

        XCTAssertEqual(linkedList.pop(), nil)

        linkedList.push(expected[expected.endIndex - 1])
        linkedList.push(expected[expected.startIndex])

        var index = 0

        linkedList.each { value in
            XCTAssertEqual(expected[index], value)
            index += 1
        }

        XCTAssertEqual(index, 2)
    }
}
