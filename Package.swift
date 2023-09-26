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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.0.0/Intercom.xcframework.zip",
            checksum: "ef7ec45880a404c6aede44922c221ba3c9ce10a04fbc884492bae45aedbf8158"
        )
    ]
)
