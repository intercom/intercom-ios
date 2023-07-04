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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.0.2/Intercom.xcframework.zip",
            checksum: "77f0aa11e0c3c0e380819e7a07ce1b4603401ee17697f0f618d1261c75efc7a8"
        ),
    ]
)
