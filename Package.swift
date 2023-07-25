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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.1.2/Intercom.xcframework.zip",
            checksum: "3e9017d7e288a72fee8679bdb39c88201b41a8b0c586a103c46f97212fd50f13"
        ),
    ]
)
