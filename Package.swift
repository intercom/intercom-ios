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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.9.0/Intercom.xcframework.zip",
            checksum: "226664fd25a29ff8a17125b1a3c87411c5ee601f50fc2386d7c403ab9c1abbd1"
        )
    ]
)
