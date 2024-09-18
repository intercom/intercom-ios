// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/18.0.0/Intercom.xcframework.zip",
            checksum: "b24a5d20a788fb4fc24a3aefbcffc225720609bd45330d9a390fa8b641757127"
        )
    ]
)
