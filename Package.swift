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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.2.1/Intercom.xcframework.zip",
            checksum: "5077d30b6fd0b61cd8fb1ad28c82c1c7bd620ffed27dacb79c9a17ac5735973d"
        )
    ]
)
