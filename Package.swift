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
            checksum: "5c6fe914af4ba404b0f67230e557f1e2e9508d67228f6eec44ced2e067d68bce"
        )
    ]
)
