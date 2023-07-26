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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.1.3/Intercom.xcframework.zip",
            checksum: "2f23c96e66f7e14fe2ba486a1e6847f36f072d115c9e8e4d45f9745407f08dc8"
        )
    ]
)
