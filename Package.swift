// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"])
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/16.1.2/Intercom.xcframework.zip",
            checksum: "1ad40a8230bac02881595a65b5be990cafb7e06e15cefcea9321a77dd7d387ca"
        )
    ]
)
