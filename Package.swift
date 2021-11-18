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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.3.3/Intercom.xcframework.zip",
            checksum: "04184364e003f7c78b3fac73b9abdbf327f57d5bd0d9a46e3b03ad016fb366b4"
        ),
    ]
)
