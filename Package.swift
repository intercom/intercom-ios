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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.4.0/Intercom.xcframework.zip",
            checksum: "4f8c0ad7bb331565a7f15130a488ef207711dd77760e3ef7ced993e13952c870"
        )
    ]
)
