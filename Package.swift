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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.2.2/Intercom.xcframework.zip",
            checksum: "a842f621175ab4d082369d95bd19381536c5444a5d82ee11ab6ef710dfb69042"
        )
    ]
)
