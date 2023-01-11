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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.6/Intercom.xcframework.zip",
            checksum: "e83104c855f1c93a644073964090ab342b65c7464df10a9d8f97765592bcd945"
        ),
    ]
)
