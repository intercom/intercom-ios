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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.7.2/Intercom.xcframework.zip",
            checksum: "6858efee292de6e4be9884e9d868896c310bd519c78e8ef888578d5979be2820"
        )
    ]
)
