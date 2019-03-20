/* This is free and unencumbered software released into the public domain. */

import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(DRYlibTests.allTests),
  ]
}
#endif
