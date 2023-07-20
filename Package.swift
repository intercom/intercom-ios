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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.1.1/Intercom.xcframework.zip",
            checksum: "4853c09b01895fb163a81c7e0ce79227484bb0f3ba9986cee4ff1b7e9e39e66c"
        ),
    ]
)
