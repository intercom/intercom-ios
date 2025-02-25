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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.6.2/Intercom.xcframework.zip",
            checksum: "80da81d7b5755130a25351a7029614249f26eed2db414bf2d5ebc23709343e69"
        )
    ]
)
