// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]),
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/12.4.3/Intercom.xcframework.zip",
            checksum: "237d27c848791c75248c9737f72dbbc75e2f81065b2662ab069ca40e532917c7"
        ),
    ]
)
