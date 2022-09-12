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
            url: "https://github.com/intercom/intercom-ios/releases/download/13.0.0/Intercom.xcframework.zip",
            checksum: "b101b9e5b40fbd4c29f5d3740ee9615ae823a00206544a166ff6b22d98650c4e"
        ),
    ]
)
