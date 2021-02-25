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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.3/Intercom.xcframework.zip",
            checksum: "10cb52aa4a86149f02817e071a232c5f97736d599616ef2ea11a36afbc281b30"
        ),
    ]
)
