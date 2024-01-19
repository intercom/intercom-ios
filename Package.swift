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
            url: "https://github.com/intercom/intercom-ios/releases/download/16.5.2/Intercom.xcframework.zip",
            checksum: "01303042b8ade88a3129f9bc66bb42e7f90b3071127b3444e16d565dc61692ab"
        )
    ]
)
