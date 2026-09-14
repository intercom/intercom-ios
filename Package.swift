// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/19.8.2/Intercom.xcframework.zip",
            checksum: "f3e7122f1e9945962f992995b8b2adbe420e8ef6bd7bce4ff02368a9e89bd6d5"
        )
    ]
)
