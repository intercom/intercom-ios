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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.0.2/Intercom.xcframework.zip",
            checksum: "b90116e5ff9362db22fc3352fe012f9eb5f8d62c4a54983b85328f7cfb258a75"
        )
    ]
)
