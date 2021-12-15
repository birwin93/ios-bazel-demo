import Foundation

extension Array where Element == Int {

    public func sum() -> Int {
        var s = 0
        for i in self {
            s += i
        }
        return s
    }
}