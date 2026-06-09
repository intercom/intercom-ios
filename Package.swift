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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.6.2/Intercom.xcframework.zip",
            checksum: "0bdd8cb7fe8d96da70f7b3c436abd50d0275102611def962b2643b9bf603b70b"
        )
    ]
)
