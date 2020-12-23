// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Intercom",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "Intercom", targets: ["Intercom"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "Intercom", path: "Intercom.xcframework")
    ]
)
