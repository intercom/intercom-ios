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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.3/Intercom.xcframework.zip",
            checksum: "b37bddc864d8ab02c34369417b8f8c35963eba6aff926865446e7e1a627b8eb5"
        )
    ]
)
