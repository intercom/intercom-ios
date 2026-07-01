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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.6.4/Intercom.xcframework.zip",
            checksum: "448df87c096a598d3b6abef8e0b7d9a3847f3f226f349175f334fc1abc2f10b9"
        )
    ]
)
