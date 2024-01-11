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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.0/Intercom.xcframework.zip",
            checksum: "4f6f5a308852fc8f3fa472b4bffa897720dc6cc0e4fec6f54314afb198bdfaa1"
        )
    ]
)
