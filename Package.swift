// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"])
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/15.2.0/Intercom.xcframework.zip",
            checksum: "43a6d8417e4d66d7d64b752fd1a56f529038f561e7aa758b143ce2d0f9f241d1"
        )
    ]
)
