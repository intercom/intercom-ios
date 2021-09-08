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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.1.4/Intercom.xcframework.zip",
            checksum: "c2f14adf156d55588b7d5a92804fb25b299dcb3a887a88c0ce69b9b604ca977c"
        ),
    ]
)
