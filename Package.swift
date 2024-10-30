// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Toaster",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "Toaster",
            targets: ["Toaster"]),
    ],
    targets: [
        .target(
            name: "Toaster",
            dependencies: [],
            path: "Sources",
            exclude: ["Classer/OSX"]
        ),
        .testTarget(
            name: "ToasterTests",
            dependencies: ["Toaster"],
            path: "ToasterTests",
            exclude: ["Classer/OSX"]
        ),
    ]
)
