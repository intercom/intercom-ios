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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.8/Intercom.xcframework.zip",
            checksum: "a56a8c5acfc7783fc8c2e0b4a0e44621463ec0b25d832e75933511474ae4f69f"
        )
    ]
)
