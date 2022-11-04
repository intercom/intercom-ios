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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.0/Intercom.xcframework.zip",
            checksum: "5bd8f073d3a92bc865137d1770480753c223c2492a07f5a56df2d6a045f1b68f"
        ),
    ]
)
