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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.0/Intercom.xcframework.zip",
            checksum: "4c48c464655de6c5459d99cc7bc5d08b12ffffd0fd837459a109abd4411b576c"
        )
    ]
)
