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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.3.2/Intercom.xcframework.zip",
            checksum: "1d829ccd30c9c09f4c3d73c766ce05076e86b7e3ce71eb9ec7f12345ee8d8451"
        )
    ]
)
