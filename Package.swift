// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ICS",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ICS",
            targets: ["ICS"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/leviouwendijk/Primitives.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "ICS",
            dependencies: [
                .product(name: "Primitives", package: "Primitives"),
            ],
        ),
        .testTarget(
            name: "ICSTests",
            dependencies: ["ICS"]
        ),
    ]
)
