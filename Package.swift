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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.0.3/Intercom.xcframework.zip",
            checksum: "156c5acc6a48220b55b3c08a04245fc79d1e8acd03d272b2860fe060a46316db"
        )
    ]
)
