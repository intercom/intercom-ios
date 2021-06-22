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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.0.1/Intercom.xcframework.zip",
            checksum: "c33b598e75c474801b4ab3f8439ab6e0cc132778e1b6ca8bd0c7bdcba198ec2f"
        ),
    ]
)
