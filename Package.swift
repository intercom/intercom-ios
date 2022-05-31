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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.4.0/Intercom.xcframework.zip",
            checksum: "1a444d68fd5a728f3f5e709bf28e629fb0aa2651012269e90f6ade1a3120da0d"
        ),
    ]
)
