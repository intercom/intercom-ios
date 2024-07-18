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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.2.1/Intercom.xcframework.zip",
            checksum: "60a9b16de4f0e176b4e4438dacb2c3cc7d5c8e6114478145716a7c1f3e9efabc"
        )
    ]
)
