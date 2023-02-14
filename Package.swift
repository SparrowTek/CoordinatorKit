// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "CoordinatorKit",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "CoordinatorKit",
            targets: ["CoordinatorKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CoordinatorKit",
            dependencies: []),
    ]
)
