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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.0.3/Intercom.xcframework.zip",
            checksum: "bed0d67a56670c65c982f29b993cfad2b07262d23316902ab72f0df6850a2bfe"
        ),
    ]
)
