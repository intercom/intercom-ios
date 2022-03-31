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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.1.0/Intercom.xcframework.zip",
            checksum: "e77d1336a045eaa624618c744c538eb70bab17a11c0ba08b24785aeefeb3ce50"
        ),
    ]
)
