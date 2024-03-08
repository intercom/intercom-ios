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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.6.0/Intercom.xcframework.zip",
            checksum: "e9e7f7c1ceb0f8aa187bbdedff91f614e513f482efe8a1292ebbbf4a8affeeb8"
        )
    ]
)
