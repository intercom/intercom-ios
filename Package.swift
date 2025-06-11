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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.8.1/Intercom.xcframework.zip",
            checksum: "8389388fd49b847c2f58ef4425d14d1b48c916f53257a6b3e4f97d535058e9fd"
        )
    ]
)
