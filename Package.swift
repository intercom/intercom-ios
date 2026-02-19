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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.2/Intercom.xcframework.zip",
            checksum: "e5d0b048688d68551e19f98522dae623edf537dded9b2ca156ea9f757f2a9a9e"
        )
    ]
)
