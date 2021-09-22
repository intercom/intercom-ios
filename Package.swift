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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.3.0/Intercom.xcframework.zip",
            checksum: "d25ee4a3782155e5f06f99e13c8a3efd00069dc41289f2ca6b6d4d5aa6f0aaa9"
        ),
    ]
)
