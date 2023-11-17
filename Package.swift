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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.3.1/Intercom.xcframework.zip",
            checksum: "427bedf9d6a34ac84c69dbdfa59204f60e3edf4ff4e65752b72aa1892721f34b"
        )
    ]
)
