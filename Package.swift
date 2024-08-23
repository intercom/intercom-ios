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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.3.0/Intercom.xcframework.zip",
            checksum: "3e7b49faa356d4fc16b4fdcc8366042db4b72257f927ba17e8e436b9df28715a"
        )
    ]
)
