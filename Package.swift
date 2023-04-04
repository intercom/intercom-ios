// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]),
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/14.1.0/Intercom.xcframework.zip",
            checksum: "66a7e3b0c008029564a405737ebd06100bf6294b74017f5cb98184de8105e6f0"
        ),
    ]
)
