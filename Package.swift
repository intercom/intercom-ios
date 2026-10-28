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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.9.2/Intercom.xcframework.zip",
            checksum: "6af284508f58de833313b263f3d82eaebc255c4d9a56ad9adf2fc6af4228c0f4"
        )
    ]
)
