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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.0.0/Intercom.xcframework.zip",
            checksum: "dc8c092b07debb5189f272a2b242ce8996b06308ecedc4b4f92ec70f3851989a"
        ),
    ]
)
