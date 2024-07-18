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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.2.0/Intercom.xcframework.zip",
            checksum: "19d6dbc07c8698bcfa7418e4ebb99dc46058f18e2b2d49ec001d6c198562a74d"
        )
    ]
)
