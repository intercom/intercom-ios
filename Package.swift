// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Intercom",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "Intercom",
            targets: ["Intercom"])
    ],
    targets: [
        .binaryTarget(
            name: "Intercom",
            path: "Intercom.xcframework"
        )
    ]
)
