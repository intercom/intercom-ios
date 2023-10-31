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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.2.2/Intercom.xcframework.zip",
            checksum: "cc63cbdb0c701ee8ebcd202087b68a3914b643a9af4951b9ab6d9acebca790d2"
        )
    ]
)
