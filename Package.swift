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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.0.1/Intercom.xcframework.zip",
            checksum: "c9bf483efeb5cc20d1a8eceede3eb1af9ba39277964259ac2b5d0c86b80a76d4"
        ),
    ]
)
