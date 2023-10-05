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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.0.2/Intercom.xcframework.zip",
            checksum: "e061f26872f833af04c0a7f442fa3a0cac8039a13ed96702652d4383273370b7"
        )
    ]
)
