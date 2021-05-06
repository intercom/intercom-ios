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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.6/Intercom.xcframework.zip",
            checksum: "08f0f81be43a65f8b20c7b6288659adb8bf023d4650cc5c7c15dfe095ed0f3dc"
        ),
    ]
)
