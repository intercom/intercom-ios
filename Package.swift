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
            url: "https://github.com/intercom/intercom-ios/releases/download/14.0.7/Intercom.xcframework.zip",
            checksum: "05924bae9bb79c6ded8a8737389b53315a665e1e7a8d8d8d9ecfe1f1442af70d"
        ),
    ]
)
