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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.2.2/Intercom.xcframework.zip",
            checksum: "c2f63e1c438a53fa925237dbaf6035c5a351767c5cc3e8103f9f36fde159324c"
        )
    ]
)
