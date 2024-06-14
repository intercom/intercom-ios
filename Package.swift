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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.1.2/Intercom.xcframework.zip",
            checksum: "c30b01d0b6f3a5975982c36bb12892679789ca152c144480acd54e3737c9d436"
        )
    ]
)
