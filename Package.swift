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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.0.1/Intercom.xcframework.zip",
            checksum: "40cb42854010e5d38559c795600e39575b8cdedcb644a235356baf5880c83222"
        )
    ]
)
