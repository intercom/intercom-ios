// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]),
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/12.1.1/Intercom.xcframework.zip",
            checksum: "a25397a642a027ef3f4a1fdb5ce9282a7d1f9e32a8a4baa1737a441ec3434be0"
        ),
    ]
)
