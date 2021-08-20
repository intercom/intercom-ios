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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.1.0/Intercom.xcframework.zip",
            checksum: "1091307174e0e5fda43b81a488b1c33aec84a6583e400ec2ae2e1ad5c62fc76d"
        ),
    ]
)
