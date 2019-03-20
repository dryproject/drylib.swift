/* This is free and unencumbered software released into the public domain. */

import XCTest

import DRYlibTests

var tests = [XCTestCaseEntry]()
tests += DRYlibTests.allTests()
XCTMain(tests)
