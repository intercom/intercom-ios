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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.6/Intercom.xcframework.zip",
            checksum: "55430af0a54db7c83437d18783c53af8805b90ba855880c334320cd65fbfb8ae"
        )
    ]
)
