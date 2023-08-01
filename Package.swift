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
            url: "https://github.com/intercom/intercom-ios/releases/download/15.1.4/Intercom.xcframework.zip",
            checksum: "c2953c0a2ffb928573c6f1d07e9574ba171fb1b115193b082f5071107e30f7a4"
        )
    ]
)
