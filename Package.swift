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
            url: "https://github.com/intercom/intercom-ios/releases/download/11.2.0/Intercom.xcframework.zip",
            checksum: "a859e7534e1605492be6d1edb417fb8025ae2022e475d41fb5a7f70bd85560f7"
        ),
    ]
)
