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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.9.1/Intercom.xcframework.zip",
            checksum: "a786554634283b13e303278a619962ba7c4bee9f4c9d79dc047953ae96ed8546"
        )
    ]
)
