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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.3.4/Intercom.xcframework.zip",
            checksum: "83f26a63832df968d0279ecdd03d8e5039ebf9bb91a9e0b1783cf184101c5a82"
        )
    ]
)
