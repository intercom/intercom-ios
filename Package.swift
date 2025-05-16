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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.7.3/Intercom.xcframework.zip",
            checksum: "970a65479b2beb96ad078f1eaa83a884a3a6504f076a4e0f3511b406163320c3"
        )
    ]
)
