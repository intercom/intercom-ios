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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.2.0/Intercom.xcframework.zip",
            checksum: "888b21deaa6e2ef770a68e609d59badeded225ec8b6fb58dd1070675eaa73294"
        ),
    ]
)
