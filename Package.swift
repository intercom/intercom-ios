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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.0.3/Intercom.xcframework.zip",
            checksum: "6cd24e71e6bd026d390b2715b093621a7c6cdf956f8ec1681b87aa4911ec9dd3"
        )
    ]
)
