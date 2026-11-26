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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.13.0/Intercom.xcframework.zip",
            checksum: "1d47bb7554eda86242f3c1bf3d37a8abf94afc1d9a5afaf0a036663ff21900ef"
        )
    ]
)
