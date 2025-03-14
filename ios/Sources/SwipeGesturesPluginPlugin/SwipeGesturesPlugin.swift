import Foundation

@objc public class SwipeGesturesPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
