import UIKit
import Capacitor

@objc(CustomViewPlugin)
public class CustomViewPlugin: CAPPlugin {
    @objc func showCustomView(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = scene.windows.first else {
                call.reject("No active window scene found")
                return
            }

            let customViewController = UIViewController()
            customViewController.view.backgroundColor = .red // Example background color

            window.rootViewController?.present(customViewController, animated: true, completion: nil)

            call.resolve()
        }
    }
}
