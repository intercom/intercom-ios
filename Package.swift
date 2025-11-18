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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.3.4/Intercom.xcframework.zip",
            checksum: "b87d95eabe645523f417b9051c20151ca7720c93116b163435c2ce1e87aa65ac"
        )
    ]
)
