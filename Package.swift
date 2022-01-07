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
            url: "https://github.com/intercom/intercom-ios/releases/download/11.0.1/Intercom.xcframework.zip",
            checksum: "4629d08403f71fe54282983e7be44e070f07607429215ca68c6144b7580eaaec"
        ),
    ]
)
