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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.3.4/Intercom.xcframework.zip",
            checksum: "8384002865d20408d814ea4336a00a9644b40508561eec6de71402980acb4cdc"
        ),
    ]
)
