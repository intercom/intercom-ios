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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.0.0/Intercom.xcframework.zip",
            checksum: "98d09829589940674d2aeb28e142ddd3d09ac367c0f39fbe63d0ea5cc4609f2f"
        )
    ]
)
