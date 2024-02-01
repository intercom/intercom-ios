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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.5/Intercom.xcframework.zip",
            checksum: "a427d8a1293fd9706e5f2f625ff15134f81846192f0d97bfaba6b5a0aed19b10"
        )
    ]
)
