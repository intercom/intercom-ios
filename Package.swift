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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.1.2/Intercom.xcframework.zip",
            checksum: "6c6ff0768a6670801ed072fa4fb0d4b3f293715270dcae9404353d5c09f43c10"
        ),
    ]
)
