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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.9/Intercom.xcframework.zip",
            checksum: "dd54698d1bf8afed0ff61d00bc3bb53f4bc3973a76b9b0b0a218f7942ba2a353"
        )
    ]
)
