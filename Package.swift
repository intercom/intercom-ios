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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.3.1/Intercom.xcframework.zip",
            checksum: "c5874415cbdc49defaedebe74f2f63d792e35d4975158431c230a63647c346bc"
        ),
    ]
)
