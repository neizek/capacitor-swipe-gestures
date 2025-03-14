const fs = require("fs");
const path = require("path");

const appDelegatePath = path.join(
  __dirname,
  "../../ios/App/App/AppDelegate.swift"
);

if (fs.existsSync(appDelegatePath)) {
  let content = fs.readFileSync(appDelegatePath, "utf8");

  if (!content.includes("MyViewController")) {
    content = content.replace(
      "func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {",
      `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let myViewController = MyViewController()
        self.window?.rootViewController = myViewController
        self.window?.makeKeyAndVisible()
      `
    );

    fs.writeFileSync(appDelegatePath, content, "utf8");
    console.log("✅ AppDelegate.swift modified successfully.");
  } else {
    console.log("ℹ️ AppDelegate.swift already modified.");
  }
} else {
  console.log("❌ AppDelegate.swift not found.");
}
