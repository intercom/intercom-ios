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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.1.0/Intercom.xcframework.zip",
            checksum: "3231927cd839ee6acbf524dfaef00f2f8a0f53a9d89aba643f5eebbbc20b786a"
        )
    ]
)
