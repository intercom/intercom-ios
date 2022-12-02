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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.3/Intercom.xcframework.zip",
            checksum: "540d3e4e3062cacbd970b00a41bcd70921e7572472d7fe4faa9ee51e10152f61"
        ),
    ]
)
