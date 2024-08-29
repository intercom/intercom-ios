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
            url: "https://github.com/intercom/intercom-ios/releases/download/17.4.0/Intercom.xcframework.zip",
            checksum: "eacb4842767fe079c1d19d0bcbd1e393dba72533d8ab83ae0b8803c9a04a7a7e"
        )
    ]
)
