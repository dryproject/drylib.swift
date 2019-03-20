/* This is free and unencumbered software released into the public domain. */

import XCTest
@testable import DRYlib

final class LengthTests: XCTestCase {
  let zero = Length<Int>(0)
  let one = Length<Int>(1)
  let fortyTwo = Length<Int>(42)

  func test_Comparable() {
    XCTAssertLessThan(zero, one)
    XCTAssertGreaterThan(one, zero)
  }

  func test_Equatable() {
    XCTAssertEqual(fortyTwo.value, 42)
    XCTAssertEqual(zero, zero)
    XCTAssertEqual(one, one)
    XCTAssertNotEqual(zero, one)
  }

  func test_Hashable() {
    // TODO
  }

  static var allTests = [
    ("test_Comparable", test_Comparable),
    ("test_Equatable", test_Equatable),
    ("test_Hashable", test_Hashable),
  ]
}
