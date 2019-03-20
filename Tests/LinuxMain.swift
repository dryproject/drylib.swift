import XCTest

import DRYlibTests

var tests = [XCTestCaseEntry]()
tests += DRYlibTests.allTests()
XCTMain(tests)