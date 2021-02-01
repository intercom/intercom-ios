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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.1/Intercom.xcframework.zip",
            checksum: "047f12cba43f0fec22d32723b06b5e005a387b7a3a82c0023b47464f5340d9f1"
        ),
    ]
)
