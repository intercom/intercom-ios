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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.8.1/Intercom.xcframework.zip",
            checksum: "9684038d2df19b70ba18504791e9fd98773c8b503856f501f5b0ec7d4224e398"
        )
    ]
)
