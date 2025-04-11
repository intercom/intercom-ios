// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/18.7.0/Intercom.xcframework.zip",
            checksum: "393787c953d896253625dcf10c08deaf623db522790bdb0548dc3a660339c599"
        )
    ]
)
