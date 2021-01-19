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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.1.1/Intercom.xcframework.zip",
            checksum: "8298928709857d737a284872cb3f603455d8534b93ca863e42d6902b502c813f"
        ),
    ]
)
