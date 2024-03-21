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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.6.1/Intercom.xcframework.zip",
            checksum: "d874522d04ed130894ca7026021151465b1d5a77fdb96a7ba905aea36260dce3"
        )
    ]
)
