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
            url: "https://github.com/intercom/intercom-ios/releases/download/11.0.0/Intercom.xcframework.zip",
            checksum: "2508d8432af87e276c436d4b701c68c649d6665b1b91864299ce6e3e733a1114"
        ),
    ]
)
