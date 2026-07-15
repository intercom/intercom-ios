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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.7.0/Intercom.xcframework.zip",
            checksum: "84ff7c3bf4fd66b8ad879d1be45287fa5a4a6eae606a8a264f86e3f2f03e1284"
        )
    ]
)
