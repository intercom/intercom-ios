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
            url: "https://github.com/intercom/intercom-ios/releases/download/10.3.5/Intercom.xcframework.zip",
            checksum: "96196cae2400e44a2948e5c810cd7ebb323af65512ba08205c4efd03eb919072"
        ),
    ]
)
