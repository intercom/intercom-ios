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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.2/Intercom.xcframework.zip",
            checksum: "1daa549446acf82cb0e5aca17a303c89fa270d53c6e3554d1f85a7360a4fdc8d"
        ),
    ]
)
