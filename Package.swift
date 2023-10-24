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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.2.1/Intercom.xcframework.zip",
            checksum: "d56c2cb8b2ce6cc20d1eaea2bfd9a4464443ef7e8796ed28289879329f25b3ae"
        )
    ]
)
