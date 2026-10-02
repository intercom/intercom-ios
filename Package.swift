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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.8.4/Intercom.xcframework.zip",
            checksum: "fc8251f24b305b91f83304d4dffaf1a90c424a7bc37be8b595dd1fc5cff566ea"
        )
    ]
)
