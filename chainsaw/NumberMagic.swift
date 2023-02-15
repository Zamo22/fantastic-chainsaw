import Foundation

public class NumberMagic {
    public var answerToTheUniverse = 42

    public func guessANumber() -> Int {
        Int.random(in: 0...100)
    }
}
