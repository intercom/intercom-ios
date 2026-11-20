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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.12.0/Intercom.xcframework.zip",
            checksum: "0a036c5f85f644bdcb69972a284c1b9e21b58141c70f2016c1c7aa48bca7072f"
        )
    ]
)
