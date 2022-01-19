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
            url: "https://github.com/intercom/intercom-ios/releases/download/11.1.0/Intercom.xcframework.zip",
            checksum: "44abae85bb0edd721760357b90e9a350680d2935715fcc428dfd6e8aacf01130"
        ),
    ]
)
