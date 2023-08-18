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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.1.5/Intercom.xcframework.zip",
            checksum: "48f5c095ad34af3012800a3440d5f32399003f918388a9f6d79cbdda565c7fe9"
        )
    ]
)
