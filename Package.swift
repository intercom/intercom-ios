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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.3.0/Intercom.xcframework.zip",
            checksum: "6f3719bbfdf81a4606a43233b922d4f3574f8c536230d51301c00a7a8ae5b1cc"
        )
    ]
)
