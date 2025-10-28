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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.3.1/Intercom.xcframework.zip",
            checksum: "2dc1f03b2bfb99b4f0c0dd893bc7935dfb9855c5c3befc4b050665e75c85ed76"
        )
    ]
)
