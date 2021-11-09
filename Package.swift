// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]),
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/10.3.2/Intercom.xcframework.zip",
            checksum: "428661506b54ecb0e3a96eedb21516e6ded91c7c97a6dc79a5b3d0749f6127a4"
        ),
    ]
)
