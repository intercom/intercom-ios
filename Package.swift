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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.3.0/Intercom.xcframework.zip",
            checksum: "7273c8291c4c3d6ee40351945e5fbc8499692c022e1a9721dff39eca6d408516"
        )
    ]
)
