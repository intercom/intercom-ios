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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.4.1/Intercom.xcframework.zip",
            checksum: "2fede0736937285a0ad6ed56a626b0f4467c24cb941abbe9d01110dc18baa7a1"
        )
    ]
)
