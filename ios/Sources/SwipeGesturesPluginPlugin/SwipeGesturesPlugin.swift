import Capacitor
import UIKit

@objc(SwipeGesturesPluginPlugin)
public class SwipeGesturesPluginPlugin: CAPPlugin {
    override public func load() {
        DispatchQueue.main.async {
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                let myViewController = MyViewController()
                appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
                appDelegate.window?.rootViewController = myViewController
                appDelegate.window?.makeKeyAndVisible()
            }
        }
    }
}
