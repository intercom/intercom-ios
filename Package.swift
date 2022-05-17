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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.3.0/Intercom.xcframework.zip",
            checksum: "6456c2cc59159f09fa6dd68b1bdfa951ea98dc08166af8b352a33c2c805fbd4a"
        ),
    ]
)
