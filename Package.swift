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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.1.1/Intercom.xcframework.zip",
            checksum: "d459dc42e607a41b82a3d98d21b1b28d3bbaa2a6ac97f80831e6d8f383e3bd47"
        )
    ]
)
