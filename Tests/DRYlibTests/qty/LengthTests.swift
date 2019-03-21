/* This is free and unencumbered software released into the public domain. */

import XCTest
@testable import DRYlib

final class LengthTests: XCTestCase {
  let zero = Length<Int>(0)
  let one = Length<Int>(1)
  let two = Length<Int>(2)
  let three = Length<Int>(3)
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

  func test_Numeric() {
    XCTAssertEqual(zero + zero, zero)
    XCTAssertEqual(zero + 0, zero)
    XCTAssertEqual(zero - zero, zero)
    XCTAssertEqual(zero - 0, zero)
    XCTAssertEqual(zero * zero, zero)
    XCTAssertEqual(zero * 0, zero)
    XCTAssertEqual(one + zero, one)
    XCTAssertEqual(one + one, two)
    XCTAssertEqual(one + 0, one)
    XCTAssertEqual(one + 1, two)
    XCTAssertEqual(one - zero, one)
    XCTAssertEqual(one - 0, one)
    XCTAssertEqual(one - one, zero)
    XCTAssertEqual(one - 1, zero)
    XCTAssertEqual(one * zero, zero)
    XCTAssertEqual(one * 0, zero)
    XCTAssertEqual(one * one, one)
    XCTAssertEqual(one * 1, one)
    XCTAssertEqual(one / one, one)
    XCTAssertEqual(one / 1, one)
  }

  static var allTests = [
    ("test_Comparable", test_Comparable),
    ("test_Equatable", test_Equatable),
    ("test_Hashable", test_Hashable),
    ("test_Numeric", test_Numeric),
  ]
}
