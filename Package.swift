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
            url: "https://github.com/intercom/intercom-ios/releases/download/12.2.0/Intercom.xcframework.zip",
            checksum: "3b0977c71c8ac9eab3ce315b4076cf3b905635d06d863d3c057a60e13de0782a"
        ),
    ]
)
