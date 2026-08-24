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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.8.0/Intercom.xcframework.zip",
            checksum: "01fbce7cb1a378973c7077a8f9f07bcee32304459651f69ebbc99d4a19cc23f0"
        )
    ]
)
