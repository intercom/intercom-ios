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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.8.3/Intercom.xcframework.zip",
            checksum: "9116596820d7c4799e6df3c0a074cf6dbb518671c46a95b173a8b71e222230ba"
        )
    ]
)
