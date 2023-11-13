// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IntercomPM-MLN-341",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"])
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/ProductMadness/intercom-ios/releases/download/16.2.3/Intercom.xcframework.zip",
            checksum: "1c0a03ea6cdc76f923a2ea540d3617151b6548983baa4d1a9d4b6a292feda6d7"
        )
    ]
)
