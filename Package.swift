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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.7.2/Intercom.xcframework.zip",
            checksum: "779305b227959e32bf89fa7a9b753f0f0a097e8bb1f81acc311cfec84dbd4b38"
        )
    ]
)
