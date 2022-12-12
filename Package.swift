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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.4/Intercom.xcframework.zip",
            checksum: "04ca16e8d5cc70a22b4686c9b6732e6f6f9afc671ed7c630963655f093d2a37d"
        ),
    ]
)
