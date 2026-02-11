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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.1/Intercom.xcframework.zip",
            checksum: "06d22f2a92f7b49b59d46a3fa5a3197812411664a93099845cc9c7b18d7e0864"
        )
    ]
)
