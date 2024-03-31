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
            resources: [
                .process("AppLovinSDKResources.bundle")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/applovin-sdk/AppLovinSDK-12.4.0.xcframework.zip",
            checksum: "69c80c51c84824943f69491b422a41ca5fd1a03f6f5e91f9115f9806d8ab8c4c"
        )
    ]
)
