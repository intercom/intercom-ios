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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.2.0/Intercom.xcframework.zip",
            checksum: "70d1eee7830f7c7e007df597ec9d3ab4d75eda0b728b71d224d6827c24781e53"
        ),
    ]
)
