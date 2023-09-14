// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"])
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/15.2.2/Intercom.xcframework.zip",
            checksum: "1397500254e0ab95100837a7f49525b797ae71c19a239dc24ae354855b5cfd7b"
        )
    ]
)
