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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.0.2/Intercom.xcframework.zip",
            checksum: "e2eb0080265968e9535236d0e9f4301f4c2d10af4b9fa34183c32dc60ba25ac3"
        ),
    ]
)
