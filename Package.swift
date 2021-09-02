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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.1.3/Intercom.xcframework.zip",
            checksum: "dfa98e53f49f18ae16e1e00dde81f864a29a3df98cc46b03f338dda6915ac6af"
        ),
    ]
)
