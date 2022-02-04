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
            url: "https://github.com/intercom/intercom-ios/releases/download/11.1.2/Intercom.xcframework.zip",
            checksum: "46839526f6a8a85ecae8153408614b9d5092eb28ef21d89586a6fb73d7851bdf"
        ),
    ]
)
