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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.4/Intercom.xcframework.zip",
            checksum: "5a80e9a2ba451e35462c430e12b2bbddfd29c44c66d8d821ae272203af2dd2e9"
        )
    ]
)
