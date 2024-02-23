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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.7/Intercom.xcframework.zip",
            checksum: "7b3a0c4f83c5ce8748b0702b7deb91192147697b35832c105296d65a25b80ae1"
        )
    ]
)
