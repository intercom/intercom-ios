// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]),
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/10.4.0/Intercom.xcframework.zip",
            checksum: "e58549055c79a1a65ef41ef52f1c7bb26f9bc044b0e5a60d5093a6b77f3f829f"
        ),
    ]
)
