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
            url: "https://github.com/intercom/intercom-ios/releases/download/19.1.2/Intercom.xcframework.zip",
            checksum: "6deeb8d4afcabcf59fb239872d6721c9ee1b3e491d71ca9d700544a504acf53a"
        )
    ]
)
