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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.3.0/Intercom.xcframework.zip",
            checksum: "c1f6e4984d8b93ca5aaaf4e7fbbd44811e5a5fe421f348b1af8e96658660c058"
        )
    ]
)
