/* This is free and unencumbered software released into the public domain. */

/// A measure of distance.
///
/// See: https://en.wikipedia.org/wiki/Length
public struct Length<T>: Comparable, Equatable, Hashable
    where T: Comparable, T: Hashable, T: Numeric {

  public let value: T

  public init(_ value: T) {
    self.value = value
  }

  public static func <(lhs: Length<T>, rhs: Length<T>) -> Bool {
    return lhs.value < rhs.value
  }

  public var isZero: Bool {
    return self.value == 0
  }
}
