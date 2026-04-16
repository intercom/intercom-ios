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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.7/Intercom.xcframework.zip",
            checksum: "8c63c9925605caf31f44587c098319bff7873f040d7aa64de7ca1918e52680a9"
        )
    ]
)
