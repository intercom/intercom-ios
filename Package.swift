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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.6.3/Intercom.xcframework.zip",
            checksum: "f204b751e0f9e8bb8790f662dbea494f3f9f7b8c4bd15fc24928e37d44d26865"
        )
    ]
)
