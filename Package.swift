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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.8.0/Intercom.xcframework.zip",
            checksum: "74ec8f91d3920de4bd03887b29960247ab033bec5ea23cede34a020290eae1a4"
        )
    ]
)
