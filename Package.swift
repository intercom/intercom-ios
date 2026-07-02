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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.6.5/Intercom.xcframework.zip",
            checksum: "1c62509be4a384f31c175f05e9141d48166fd6bdecb0ae8c46b965cd07b68ffd"
        )
    ]
)
