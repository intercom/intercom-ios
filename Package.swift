// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"]),
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            url: "https://github.com/intercom/intercom-ios/releases/download/9.3.2/Intercom.xcframework.zip",
            checksum: "12e398bc686398aeed13128c075478a0d1f174f0c0db8e6101d1665876842863"
        ),
    ]
)
