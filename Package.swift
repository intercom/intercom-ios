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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.6/Intercom.xcframework.zip",
            checksum: "3f34546abeded0aabe9f4d63b6b9f79689c3c01367b953b8b014b8cc30340177"
        )
    ]
)
