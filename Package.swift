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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.2.0/Intercom.xcframework.zip",
            checksum: "248a6e9681f4236eec450742ca7ba576b7de1d5c02ba9b6f47dfb1f6f298ca58"
        )
    ]
)
