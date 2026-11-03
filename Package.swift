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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.10.0/Intercom.xcframework.zip",
            checksum: "86721574d5aa8e9619f1d1805135f28690b8f8e371442a2d008c2e95ed8f0c96"
        )
    ]
)
