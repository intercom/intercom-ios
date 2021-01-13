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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.1.0/Intercom.xcframework.zip",
            checksum: "3bff68d34a1118d53d319eeeaeb08176eaae210aef5311a91cdb80c82e550acb"
        ),
    ]
)
