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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.1/Intercom.xcframework.zip",
            checksum: "f08454a82f961e9a74a11daaaa6c7577827c1ea46509056b357d836f9ecd6c48"
        )
    ]
)
