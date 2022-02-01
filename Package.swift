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
            url: "https://github.com/intercom/intercom-ios/releases/download/11.1.1/Intercom.xcframework.zip",
            checksum: "9d4fb241b844d92030643472210791618f6550313d0a115d87977883aa64788d"
        ),
    ]
)
