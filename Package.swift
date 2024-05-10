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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.0.4/Intercom.xcframework.zip",
            checksum: "b955093132d122176a36ce3f2eab4e0eeba400beb40cbdeeb53942f15e31ba1f"
        )
    ]
)
