
import Foundation

extension String {
    // MARK: - Check is valid Text

    func isText(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let regExpression = "^[a-zA-Z]+$"
        let str = NSPredicate(format: "SELF MATCHES %@", regExpression)
        if str.evaluate(with: self) {
            if CInt(self) != 0 {
                return true
            }
        }
        return false
    }

    // MARK: - Removes whitespaces

    func removeWhiteSpaces() -> String {
        var str = self.trimmingCharacters(in: .whitespaces)
        str = str.replacingOccurrences(of: " ", with: "")
        return str
    }

    // MARK: - Check isEmpty

    func isEmpty() -> Bool {
        if self.isEmpty || self == "" {
            return true
        }
        return false
    }
}
