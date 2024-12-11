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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.2.1/Intercom.xcframework.zip",
            checksum: "7d5eb66ef38bcc4b64800642d248a57d1443a0239f30f3f24d54c4e8c4b5299c"
        )
    ]
)
