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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.5/Intercom.xcframework.zip",
            checksum: "4716aeb91dc56445fcd9c2f5d0e64479eb082cb6fa8b15d5d8cecaafd44b5136"
        ),
    ]
)
