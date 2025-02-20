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
            url: "https://github.com/intercom/intercom-ios/releases/download/18.6.1/Intercom.xcframework.zip",
            checksum: "37bd136bb83fdb1e3d0c746df1d38a4d8305ed350b022017982999e0f3ed15b7"
        )
    ]
)
