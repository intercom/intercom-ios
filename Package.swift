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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.0.0/Intercom.xcframework.zip",
            checksum: "a2808a05b413fbc57746130dc29c15317fa6bf5fbc61e5578ef579359fff7002"
        ),
    ]
)
