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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.3/Intercom.xcframework.zip",
            checksum: "fe73dbc52c7b89df3a216b9edbd25c4b50f76c9f7b06c52d37ced2606fad6d8a"
        )
    ]
)
