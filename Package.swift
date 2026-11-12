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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.11.0/Intercom.xcframework.zip",
            checksum: "b98728826ad2ed1f5df7c7a6e055c5a560b6eda8db610cbc76d4f92b3e8b5e9e"
        )
    ]
)
