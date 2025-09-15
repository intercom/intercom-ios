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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.2.0/Intercom.xcframework.zip",
            checksum: "b6e3e1133156f4d7f5e46104eea61cc9b24dc508cc1788309249711eedcd304d"
        )
    ]
)
