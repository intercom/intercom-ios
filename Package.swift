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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.6.0/Intercom.xcframework.zip",
            checksum: "0dc58103477477be73a9caa7ab318e3b45f9d8136b3d674c5e516728268c928a"
        )
    ]
)
