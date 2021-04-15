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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.4/Intercom.xcframework.zip",
            checksum: "d338d72377bdedee75bcf191d9bdf3e360a9e12b3ffb4619c9a42f5eee3ede84"
        ),
    ]
)
