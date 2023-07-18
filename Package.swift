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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.1.0/Intercom.xcframework.zip",
            checksum: "45fef57a8a1e7fb1b442785f454c4b4dca7369a4f6f1778273c00ba7aabe8011"
        ),
    ]
)
