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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.4.0/Intercom.xcframework.zip",
            checksum: "5658c092d081afd0399fb16d62669ea1513657a3a5dfd8202655e5e516357df0"
        )
    ]
)
