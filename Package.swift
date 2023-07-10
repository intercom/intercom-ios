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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.0.3/Intercom.xcframework.zip",
            checksum: "1b6e53af86e1f5d5b1101164a5861643148cdabb315e1eef58d3c912898cc162"
        ),
    ]
)
