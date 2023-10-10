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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.1.0/Intercom.xcframework.zip",
            checksum: "ad1b3e6093177cdd3e078d615134ae76fdd2bfc4d385b5c3738a676ac3355bff"
        )
    ]
)
