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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.4.0/Intercom.xcframework.zip",
            checksum: "dff3e610491a08d6275801dc99a48687d464e1d43ab87eb508b09034319f363a"
        )
    ]
)
