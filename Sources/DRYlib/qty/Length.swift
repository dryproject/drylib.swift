/* This is free and unencumbered software released into the public domain. */

/// A measure of distance.
///
/// See: https://en.wikipedia.org/wiki/Length
public struct Length<T>: Comparable, Equatable, Hashable, Numeric
    where T: Comparable, T: Hashable, T: Numeric {

  /// Conformance to Numeric
  public typealias Magnitude = T.Magnitude
  public typealias IntegerLiteralType = T.IntegerLiteralType

  public var value: T

  public init() {
    self.value = 0
  }

  public init(_ value: T) {
    self.value = value
  }

  /// Conformance to Numeric and ExpressibleByIntegerLiteral
  public init(integerLiteral value: IntegerLiteralType) {
    self.value = T(integerLiteral: value)
  }

  /// Conformance to Numeric
  public init?<N>(exactly source: N) where N: BinaryInteger {
    self.value = T(exactly: source)! // FIXME
  }

  public var isZero: Bool {
    return self.value == 0
  }

  /// Conformance to Numeric
  public var magnitude: Length<T>.Magnitude {
    return self.value.magnitude
  }
}

/// Conformance to Comparable
public extension Length {
  static func <(lhs: Length<T>, rhs: Length<T>) -> Bool {
    return lhs.value < rhs.value
  }
}

/// Conformance to Numeric
public extension Length {
  static func +(lhs: Length<T>, rhs: Length<T>) -> Length<T> {
    return Length<T>(lhs.value + rhs.value)
  }

  static func -(lhs: Length<T>, rhs: Length<T>) -> Length<T> {
    return Length<T>(lhs.value - rhs.value)
  }

  static func *(lhs: Length<T>, rhs: Length<T>) -> Length<T> {
    return Length<T>(lhs.value * rhs.value)
  }

  static func +=(lhs: inout Length<T>, rhs: Length<T>) {
    lhs.value += rhs.value
  }

  static func -=(lhs: inout Length<T>, rhs: Length<T>) {
    lhs.value -= rhs.value
  }

  static func *=(lhs: inout Length<T>, rhs: Length<T>) {
    lhs.value *= rhs.value
  }
}

/// Convenience overloads
public extension Length {
  static func +(lhs: Length<T>, rhs: T) -> Length<T> {
    return Length<T>(lhs.value + rhs)
  }

  static func -(lhs: Length<T>, rhs: T) -> Length<T> {
    return Length<T>(lhs.value - rhs)
  }

  static func *(lhs: Length<T>, rhs: T) -> Length<T> {
    return Length<T>(lhs.value * rhs)
  }

  static func +=(lhs: inout Length<T>, rhs: T) {
    lhs.value += rhs
  }

  static func -=(lhs: inout Length<T>, rhs: T) {
    lhs.value -= rhs
  }

  static func *=(lhs: inout Length<T>, rhs: T) {
    lhs.value *= rhs
  }
}

public extension Length where T == Int {
  static func /(lhs: Length<T>, rhs: Length<T>) -> Length<T> {
    return Length<T>(lhs.value / rhs.value)
  }

  static func /(lhs: Length<T>, rhs: T) -> Length<T> {
    return Length<T>(lhs.value / rhs)
  }
}
