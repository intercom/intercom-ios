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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.2.1/Intercom.xcframework.zip",
            checksum: "bf92dc38869f49bdbc73a42e6b0e74bbba6dcd7f4f55b445be01b0aacb77d6b3"
        )
    ]
)
