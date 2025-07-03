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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.0.1/Intercom.xcframework.zip",
            checksum: "c0d172b3ab9202ab80d9b87709278a7b621fbf46481ec6328ad826f5e65f98d6"
        )
    ]
)
