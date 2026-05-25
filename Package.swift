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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.6.1/Intercom.xcframework.zip",
            checksum: "3433186187cc14750010eedbb9d2a4f4c34f21ab8101c4134e6ae6c6ee17167c"
        )
    ]
)
