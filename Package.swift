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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.1.1/Intercom.xcframework.zip",
            checksum: "18f1dc2aeddd33bf5648a2129ab4fa7dd5292a6a6523392dd45293f0425d2636"
        )
    ]
)
