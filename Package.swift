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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.6.2/Intercom.xcframework.zip",
            checksum: "e512a2f4a0c930aeb30dbf1278f7dd39ea2611a96d1cfe613e1135f55f272ef6"
        )
    ]
)
