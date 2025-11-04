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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.3.2/Intercom.xcframework.zip",
            checksum: "d5a2613b4d84d6391ef9bd486266058c772f9937dcc39d582d20321181701090"
        )
    ]
)
