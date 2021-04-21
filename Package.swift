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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.5/Intercom.xcframework.zip",
            checksum: "6a8b16432bdb2bf66b71229f2c4701859e506db2989169a837dbf1f42c55eefc"
        ),
    ]
)
