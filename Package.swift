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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.0.1/Intercom.xcframework.zip",
            checksum: "5b3cfc926ebb2ddc2b953c3873caeed69736832226a85f764ed145c5449b1ad8"
        )
    ]
)
