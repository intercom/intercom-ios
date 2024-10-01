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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.1.0/Intercom.xcframework.zip",
            checksum: "c51bcc851eac097c99ea9651c9d5ce24bf57b82a2565f0756aaff67551d05e98"
        )
    ]
)
