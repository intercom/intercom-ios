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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.4.2/Intercom.xcframework.zip",
            checksum: "22b38b11115f2d9d8959d42aa931f542c5505dda3c3e0f8f9b3e48773fcc9f93"
        ),
    ]
)
