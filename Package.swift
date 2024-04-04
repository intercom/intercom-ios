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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.0.0/Intercom.xcframework.zip",
            checksum: "fa615003f8184f10b7f8bd96ee1e2ff8a9ddf6b8169d51f9e36577dcbe125273"
        )
    ]
)
