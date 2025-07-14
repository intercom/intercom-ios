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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.1.0/Intercom.xcframework.zip",
            checksum: "a302c21e22b01b22a5f4532b53b30390bfca26bb341e349db9df03a513abbbed"
        )
    ]
)
