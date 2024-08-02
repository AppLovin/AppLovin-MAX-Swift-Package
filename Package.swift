// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppLovinSDK",
    defaultLocalization: "en",
    products: [
        .library(
            name: "AppLovinSDK",
            targets: ["AppLovinSDKResources"]
        ),
    ],
    dependencies: [],
    targets: [
        // This is a wrapper target to configure various settings and resources required by main binary target.
        .target(
            name: "AppLovinSDKResources",
            dependencies: [
                .target(name: "AppLovinSDK")
            ],
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Foundation"),
                .linkedFramework("MessageUI"),
                .linkedFramework("SafariServices"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                
                .linkedLibrary("z"),
                
                // NOTE: Swift Package Manager currently does not allow dependencies with unsafeFlags, unless a specific branch/commit is used.
                // For now, these flags should be added manually to the project for integration.
                // .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "AppLovinSDK",
            url: "https://raw.githubusercontent.com/ritamsarmah/test/spm/AppLovinSDK.xcframework.zip",
            checksum: "934f1cd5bbedf1386f46f9314a2a5eeff0dba463dd16d9f8db85ec79e9899dc6"
        )
    ]
)
