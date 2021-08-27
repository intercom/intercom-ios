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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.1.1/Intercom.xcframework.zip",
            checksum: "a12b1cde5b41ac639d4e6988d69ff4c8ee016f484205dcf56dbea43a44b56b26"
        ),
    ]
)
