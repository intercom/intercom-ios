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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.6.3/Intercom.xcframework.zip",
            checksum: "227d5284093cab983c880e3674ece3c4a8d7c7a193e20241032eadbef271b536"
        )
    ]
)
