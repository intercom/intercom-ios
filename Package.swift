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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.7.1/Intercom.xcframework.zip",
            checksum: "3aac60f890fb55b921133b23a88cbd48c854ce33c86e03b969c2f58e94eaf938"
        )
    ]
)
