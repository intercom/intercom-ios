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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.6.0/Intercom.xcframework.zip",
            checksum: "6e48be94cad1016133fdf840772b3484c388fd144baa76f63166eaaaacfcb08a"
        )
    ]
)
