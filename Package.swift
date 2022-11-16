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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.1/Intercom.xcframework.zip",
            checksum: "5c113c342bcb38f50baf4a5db3859572e26fe4ba9f577896afecda52156efe6f"
        ),
    ]
)
