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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.2.0/Intercom.xcframework.zip",
            checksum: "59338a4b12197a91628a2c03a8983a85a85e676c2361c81b104165dc894afe75"
        )
    ]
)
