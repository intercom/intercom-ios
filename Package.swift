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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.2.3/Intercom.xcframework.zip",
            checksum: "c4203fa507bb24e453fd0a80af5193cbaeebf98174bf6a80742c1fcc983bc779"
        )
    ]
)
