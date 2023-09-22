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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.0.0/Intercom.xcframework.zip",
            checksum: "51587ebc06c20e4e036db68ef28368f8d27ad26fde0a95a429b74e295ee1fa09"
        )
    ]
)
