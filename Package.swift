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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.7.1/Intercom.xcframework.zip",
            checksum: "3bb26e8c4af58836b9a513eb5a9f3b3d38f02a77762643bbaab65938b9be25c0"
        )
    ]
)
