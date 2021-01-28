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
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.0/Intercom.xcframework.zip",
            checksum: "68b7647bd4e4d287947912b5e033e8df38b47b075ca07196c1161a3c99a6c368"
        ),
    ]
)
