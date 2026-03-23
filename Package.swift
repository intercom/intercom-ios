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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.5.5/Intercom.xcframework.zip",
            checksum: "434342cbdd4d8aa1545d8de5ea41d2defb9f9ea930ca738e6972effe986eb6f0"
        )
    ]
)
