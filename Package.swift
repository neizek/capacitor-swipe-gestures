// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorSwipeGestures",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorSwipeGestures",
            targets: ["SwipeGesturesPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "SwipeGesturesPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/SwipeGesturesPluginPlugin"),
        .testTarget(
            name: "SwipeGesturesPluginPluginTests",
            dependencies: ["SwipeGesturesPluginPlugin"],
            path: "ios/Tests/SwipeGesturesPluginPluginTests")
    ]
)