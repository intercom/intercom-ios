// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"])
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/16.2.3/Intercom.xcframework.zip",
            checksum: "76a2f76dbd8997c7e7849206e086f351efce9b426370f74d66e87a9303dba7c6"
        )
    ]
)
