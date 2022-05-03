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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.2.1/Intercom.xcframework.zip",
            checksum: "705469f671e803e74a30e51ae00be5eade2377bac3f789cacb684cb594d0f6a6"
        ),
    ]
)
