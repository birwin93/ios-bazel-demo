import Foundation

extension String {

    func trimmed() -> String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
}